/***************************************************************************//**
 * @file
 * @brief Zigbee Over-the-air bootload cluster for upgrading firmware and
 * downloading specific file.  These routines are command to the client
 * and server.
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

// this file contains all the common includes for clusters in the util
#include "app/framework/util/common.h"
#include "app/framework/util/attribute-storage.h"

// clusters specific header
#include "ota.h"

#include "app/framework/plugin/ota-storage-common/ota-storage.h"
#include "app/framework/plugin/ota-server-policy/ota-server-policy.h"

// This relates all OTA command IDs in app/framework/gen/command-id.h
// to minimum message lengths (does not include SL_ZIGBEE_AF_ZCL_OVERHEAD)
const uint8_t sli_zigbee_af_ota_min_message_lengths[] = {
  2,      // Image Notify
  8,      // Query Next Image Request
  1,      // Query Next Image Response
  13,     // Image Block Request
  13,     // Image Page Request
  1,      // Image Block Response (abort is shortest)
  1,      // Upgrade End Request
  1,      // Upgrade End Response
  18,     // Query Specific File Request
  1,     // Query Specific File Response
};

sl_zigbee_af_ota_image_id_t sli_zigbee_af_ota_create_ember_af_ota_image_id_struct(uint16_t manufacturerId,
                                                                                  uint16_t imageType,
                                                                                  uint32_t fileVersion)
{
  sl_zigbee_af_ota_image_id_t id;
  id.manufacturerId = manufacturerId;
  id.imageTypeId = imageType;
  id.firmwareVersion = fileVersion;
  memset(id.deviceSpecificFileEui64, 0, EUI64_SIZE);
  return id;
}

// This assumes the message has already been validated for its length
uint8_t sli_zigbee_af_ota_parse_image_id_from_message(sl_zigbee_af_ota_image_id_t* returnId,
                                                      const uint8_t* buffer,
                                                      uint8_t length)
{
  returnId->manufacturerId  = sl_zigbee_af_get_int16u(buffer, 0, length);
  returnId->imageTypeId     = sl_zigbee_af_get_int16u(buffer, 2, length);
  returnId->firmwareVersion = sl_zigbee_af_get_int32u(buffer, 4, length);
  memset(returnId->deviceSpecificFileEui64, 0, EUI64_SIZE);
  return 8;
}

#if defined(SL_ZIGBEE_AF_PRINT_CORE)

// 32-bit math may be expensive and is only needed for printing
// purposes.  So this functionality should be conditionally compiled in.

// The 'currentOffset' and 'endOffset' parameters are relative to the static
// variable 'startingOffset'.  It is expected the 'startingOffset' is set by a
// previous call that did nothing but pass in the 'offsetStart' value
// (other parameters are ignored in that case).
static uint8_t printPercentage(const char * prefixString,
                               uint8_t updateFrequency,
                               uint32_t offsetStart,
                               uint32_t currentOffset,
                               uint32_t endOffset)
{
  static uint8_t percentageComplete = 0;
  static uint8_t oldPercentageComplete = 255; // invalid value
  static uint32_t startingOffset = 0;
  static uint32_t imageSize = 0;

  if (offsetStart > 0 || endOffset > 0) {
    oldPercentageComplete = 255;
    startingOffset = offsetStart;
    imageSize = endOffset - startingOffset;
    return 0;
  }
  // The rest of this code should NOT use 'offsetStart', but 'startingOffset'.

  currentOffset -= startingOffset;

  percentageComplete = sli_zigbee_af_calculate_percentage(currentOffset, imageSize);

  if (oldPercentageComplete == 255
      || (percentageComplete >= updateFrequency
          && (percentageComplete
              >= (oldPercentageComplete + updateFrequency)))) {
    sl_zigbee_af_core_println("%p: %d%% complete", prefixString, percentageComplete);
    oldPercentageComplete = percentageComplete;
  }
  return percentageComplete;
}

void sli_zigbee_af_print_percentage_set_start_and_end(uint32_t startingOffset, uint32_t endOffset)
{
  printPercentage(NULL,           // prefix string (ignored)
                  0,              // update frequency (ignored)
                  startingOffset,
                  0,              // current offset (ignored)
                  endOffset);
}

uint8_t sli_zigbee_af_print_percentage_update(const char * prefixString,
                                              uint8_t updateFrequency,
                                              uint32_t currentOffset)
{
  return printPercentage(prefixString,
                         updateFrequency,
                         0,               // offset start (ignored)
                         currentOffset,
                         0);              // offset end (ignored)
}

uint8_t sli_zigbee_af_calculate_percentage(uint32_t currentOffset, uint32_t imageSize)
{
  uint8_t percentage = 0;
  if (imageSize == 0) {
    return 0;
  }

  if (currentOffset >= imageSize) {
    percentage = 100;
  } else {
    percentage = (currentOffset * 100) / imageSize;
  }
  return percentage;
}

#endif // defined SL_ZIGBEE_AF_CORE_PRINT_ENABLED
