/***************************************************************************//**
 * @file
 * @brief Weak callbacks for the Reporting plugin.
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
#include "app/framework/plugin/reporting/reporting.h"

/** @brief Configured
 *
 * This callback is called by the Reporting plugin whenever a reporting entry
 * is configured, including when entries are deleted or updated. The
 * application can use this callback for scheduling readings or measurements
 * based on the minimum and maximum reporting interval for the entry. The
 * application should return SL_ZIGBEE_ZCL_STATUS_SUCCESS if it can support the
 * configuration or an error status otherwise. Note: attribute reporting is
 * required for many clusters and attributes, so rejecting a reporting
 * configuration may violate ZigBee specifications.
 *
 * @param entry   Ver.: always
 */
WEAK(sl_zigbee_af_status_t sl_zigbee_af_reporting_configured_cb(const sl_zigbee_af_plugin_reporting_entry_t *entry))
{
  return SL_ZIGBEE_ZCL_STATUS_SUCCESS;
}

/** @brief Configured
 *
 * This callback is called by the Reporting plugin to get the default reporting
 * configuration values from user if there is no default value available within
 * af generated default reporting configuration tabel. The application need to
 * write to the minInterval, maxInterval and reportable change in the passed
 * IO pointer in the arguement while handleing this callback, then application
 * shall return true if it has provided the default values or else false for
 * reporting plugin to further handleing.
 *
 * @param entry   Ver.: always
 */
WEAK(bool sl_zigbee_af_reporting_get_default_reporting_config_cb(sl_zigbee_af_plugin_reporting_entry_t *entry))
{
  // Change the values as appropriate for the application.
  entry->data.reported.minInterval = 1;
  entry->data.reported.maxInterval = 0xFFFE;
  entry->data.reported.reportableChange = 1;
  entry->direction = SL_ZIGBEE_ZCL_REPORTING_DIRECTION_REPORTED;
  return true;
}
