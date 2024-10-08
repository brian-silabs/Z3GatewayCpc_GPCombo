/***************************************************************************//**
 * @file
 * @brief Default configuration for the Reporting plugin.
 *******************************************************************************
 * # License
 * <b>Copyright 2018 Silicon Laboratories Inc. www.silabs.com</b>
 *******************************************************************************
 *
 * The licensor of this software is Silicon Laboratories Inc. Your use of this
 * software is governed by the terms of Silicon Labs Master Software License
 * Agreement (MSLA) available at
 * www.silabs.com/about-us/legal/master-software-license-agreement. This
 * software is distributed to you in Source Code format and is governed by the
 * sections of the MSLA applicable to Source Code.
 *
 ******************************************************************************/

#include "app/framework/include/af.h"
#include "app/framework/util/common.h"
#include "app/framework/util/attribute-storage.h"
#include "app/framework/plugin/reporting/reporting.h"

#define REPORT_FAILED 0xFF

#if (defined SL_ZIGBEE_ZCL_GENERATED_REPORTING_CONFIG_DEFAULTS_TABLE_SIZE \
     && 0 != SL_ZIGBEE_ZCL_GENERATED_REPORTING_CONFIG_DEFAULTS_TABLE_SIZE)
const sl_zigbee_af_plugin_reporting_entry_t generatedReportingConfigDefaults[] = SL_ZIGBEE_ZCL_GENERATED_REPORTING_CONFIG_DEFAULTS;
#endif

static void scanTableAddDefaultConfigs(void);

// Load Default reporting configuration from generated table
void sl_zigbee_af_reporting_load_reporting_config_defaults(void)
{
  scanTableAddDefaultConfigs();
}

// scanning the table and adding default configs
// 1) create a true/false record for each of the generated configs
// 2) loop over the entries in the reporting table
//   a) for each entry, scan through the default config references
//   b) if we find any default configs that match the current table entry, mark them as do not add
// 3) go through the updated record, and add the unmarked ones to the end of the table
//
// we use a large bitmask array, where each bit corresponds with either
//  - (0) DONT_ADD, a matching entry exists in the Reporting Table
//  - (1) ADD_CONFIG, this configuration needs to be added to the table
// using a large bitmask over a simple array allows us to compress the information to 1-bit
// per entry and greatly reduces the RAM impact on the CSTACK
//
// these macros are used to reference the bit-record corresponding to the given index.
#define ADD_CONFIG_INDEX(n) ((n) >> 3)
#define ADD_CONFIG_BIT(n) (1U << ((n) & 0x07))
// EX: extracting bit-record for entry i in generatedReportingConfigDefaults
//     addConfigsBitmask[ADD_CONFIG_INDEX(i)] & ADD_CONFIG_BIT(i)

#define ADD_CONFIGS_LENGTH (ADD_CONFIG_INDEX(SL_ZIGBEE_ZCL_GENERATED_REPORTING_CONFIG_DEFAULTS_TABLE_SIZE) + 1)
// -----------------------------

static void scanTableAddDefaultConfigs(void)
{
  #if (SL_ZIGBEE_ZCL_GENERATED_REPORTING_CONFIG_DEFAULTS_TABLE_SIZE != 0)
  uint8_t addConfigsBitmask[ADD_CONFIGS_LENGTH];
  uint16_t i;

  // initialize all of the records as ADD_CONFIG
  memset(addConfigsBitmask, 0xff, sizeof(addConfigsBitmask));

  // scan the table entries, marking matching generated defaults as DONT_ADD
  sl_zigbee_af_plugin_reporting_entry_t tableEntry;
  for (i = 0; i < sli_zigbee_af_reporting_num_entries(); i++) {
    sli_zigbee_af_reporting_get_entry(i, &tableEntry);
    for (uint16_t j = 0; j < SL_ZIGBEE_ZCL_GENERATED_REPORTING_CONFIG_DEFAULTS_TABLE_SIZE; j++) {
      if ((addConfigsBitmask[ADD_CONFIG_INDEX(j)] & ADD_CONFIG_BIT(j))
          && sli_zigbee_af_reporting_do_entries_match(&tableEntry, &generatedReportingConfigDefaults[j])) {
        addConfigsBitmask[ADD_CONFIG_INDEX(j)] &= ~ADD_CONFIG_BIT(j);
      }
    }
  }

  // now scan through the generated report configs, check the corresponding record
  for (i = 0; i < SL_ZIGBEE_ZCL_GENERATED_REPORTING_CONFIG_DEFAULTS_TABLE_SIZE; i++) {
    // if the record corresponding to the index shows ADD_CONFIG
    //  to the table at the next available free index
    if (addConfigsBitmask[ADD_CONFIG_INDEX(i)] & ADD_CONFIG_BIT(i)) {
      tableEntry = generatedReportingConfigDefaults[i];
      if (sli_zigbee_af_reporting_append_entry(&tableEntry) == NULL_INDEX) {
        // if we are out of free indices, break the loop
        // we may run out of free indices if the number of configurations we receive over
        // the air exceeds the number of free spaces allocated by the plugin option
        break;
      }
    }
  }
  #endif // (SL_ZIGBEE_ZCL_GENERATED_REPORTING_CONFIG_DEFAULTS_TABLE_SIZE != 0)
}

// Get default reporting values - returns true if there is default value
// avilable either in the table or a call back to application
bool sl_zigbee_af_reporting_get_reporting_config_defaults(sl_zigbee_af_plugin_reporting_entry_t *defaultConfiguration)
{
  // NULL error check - return false.
  if (NULL == defaultConfiguration) {
    return false;
  }
  // When there is a table table available - search and read the values,
  // if default config value found, retrun true to the caller to use it
#if ((defined SL_ZIGBEE_ZCL_GENERATED_REPORTING_CONFIG_DEFAULTS_TABLE_SIZE) \
  && (0 != SL_ZIGBEE_ZCL_GENERATED_REPORTING_CONFIG_DEFAULTS_TABLE_SIZE))
  for (int i = 0; i < SL_ZIGBEE_ZCL_GENERATED_REPORTING_CONFIG_DEFAULTS_TABLE_SIZE; i++) {
    // All of the serach parameters match then copy the default config.
    if ((defaultConfiguration->endpoint == generatedReportingConfigDefaults[i].endpoint)
        && (defaultConfiguration->clusterId == generatedReportingConfigDefaults[i].clusterId)
        && (defaultConfiguration->attributeId == generatedReportingConfigDefaults[i].attributeId)
        && (defaultConfiguration->mask == generatedReportingConfigDefaults[i].mask)
        && (defaultConfiguration->manufacturerCode == generatedReportingConfigDefaults[i].manufacturerCode)) {
      defaultConfiguration->direction = SL_ZIGBEE_ZCL_REPORTING_DIRECTION_REPORTED;
      defaultConfiguration->data = generatedReportingConfigDefaults[i].data;
      return true;
    }
  }
#endif
  // At this point - There is no entry in the generated deafult table,
  // so the application need to be called to get default reporting values
  // The application should provide the default values because , in BDB an
  // implemented reportable attribute will reset its reporting configuration
  // when receives a special case of minInterval and maxInterval for which
  // function gets called.
  if (sl_zigbee_af_reporting_get_default_reporting_config_cb(defaultConfiguration)) {
    return true;
  }
  return false;
}
