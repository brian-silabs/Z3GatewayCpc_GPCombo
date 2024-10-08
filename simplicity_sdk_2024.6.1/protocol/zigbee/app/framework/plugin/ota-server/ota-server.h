/***************************************************************************//**
 * @file
 * @brief APIs and defines for the OTA Server plugin.
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

#ifndef ZIGBEE_OTA_SERVER_H
#define ZIGBEE_OTA_SERVER_H

#include "ota-server-config.h"
#if (SL_ZIGBEE_AF_PLUGIN_OTA_SERVER_PAGE_REQUEST_SUPPORT == 1)
#define PAGE_REQUEST_SUPPORT
#endif
#if (SL_ZIGBEE_AF_PLUGIN_OTA_SERVER_MIN_BLOCK_REQUEST_SUPPORT == 1)
#define MIN_BLOCK_REQUEST_SUPPORT
#endif
#if (SL_ZIGBEE_AF_PLUGIN_OTA_SERVER_DYNAMIC_MIN_BLOCK_PERIOD_SUPPORT == 1)
#define DYNAMIC_MIN_BLOCK_PERIOD_SUPPORT
#endif

/**
 * @defgroup ota-server OTA Server
 * @ingroup component cluster
 * @brief API and Callbacks for the OTA Cluster Server Component
 *
 * Silicon Labs implementation of the Zigbee Over-the-air Bootload Server
 * Cluster (a multi-hop, application bootloader). This
 * implementation serves up a file from an OTA storage
 * device and sends data to clients. It also controls
 * when they can upgrade to the downloaded file.
 *
 */

/**
 * @addtogroup ota-server
 * @{
 */

#include "app/framework/include/af.h"

/**
 * @name Callbacks
 * @{
 */

/**
 * @defgroup ota_server_cb OTA Server
 * @ingroup af_callback
 * @brief Callbacks for OTA Server Component
 *
 */

/**
 * @addtogroup ota_server_cb
 * @{
 */

// This will eventually be moved into a plugin-specific callbacks file.
void sl_zigbee_af_ota_server_send_upgrade_command_cb(sl_802154_short_addr_t dest,
                                                     uint8_t endpoint,
                                                     const sl_zigbee_af_ota_image_id_t* id);

/** @brief Call when a block is sent to a device.
 *
 * This function will be called when a block is sent to a device.
 *
 * @param actualLength  The block length.
 * @param manufacturerId  The manufacturer ID.
 * @param imageTypeId  The image Type ID.
 * @param firmwareVersion  Firmware Version.
 */
void sl_zigbee_af_ota_server_block_sent_cb(uint8_t actualLength,
                                           uint16_t manufacturerId,
                                           uint16_t imageTypeId,
                                           uint32_t firmwareVersion);

/** @brief Call when an update has started.
 *.
 *
 * This function will be called when an update has started.
 *
 * @param manufacturerId  The manufacturer ID.
 * @param imageTypeId  The image Type ID.
 * @param firmwareVersion  Firmware Version.
 * @param maxDataSize  Maximum data size.
 * @param offset  Offset.
 */
void sl_zigbee_af_ota_server_update_started_cb(uint16_t manufacturerId,
                                               uint16_t imageTypeId,
                                               uint32_t firmwareVersion,
                                               uint8_t maxDataSize,
                                               uint32_t offset);

/** @brief Call when an OTA update has finished.
 *
 * This function will be called when an OTA update has finished.
 *
 * @param manufacturerId  The manufacturer ID.
 * @param imageTypeId  The image Type ID.
 * @param firmwareVersion  Firmware Version.
 * @param source  The source node ID.
 * @param status  An update status.
 */
void sl_zigbee_af_ota_server_update_complete_cb(uint16_t manufacturerId,
                                                uint16_t imageTypeId,
                                                uint32_t firmwareVersion,
                                                sl_802154_short_addr_t source,
                                                uint8_t status);

/** @} */ // end of ota_server_cb
/** @} */ // end of name Callbacks
/** @} */ // end of ota-server

#if defined(SL_ZIGBEE_TEST) && !defined(EM_AF_TEST_HARNESS_CODE)
  #define EM_AF_TEST_HARNESS_CODE
#endif

uint8_t sli_zigbee_af_ota_server_get_block_size(void);
uint8_t sli_zigbee_af_ota_image_block_request_handler(sl_zigbee_af_image_block_request_callback_struct_t* callbackData);

bool sli_zigbee_af_ota_page_request_error_handler(void);

void sli_zigbee_af_ota_page_request_tick(uint8_t endpoint);

// Returns the status code to the request.
uint8_t sli_zigbee_af_ota_page_request_handler(uint8_t clientEndpoint,
                                               uint8_t serverEndpoint,
                                               const sl_zigbee_af_ota_image_id_t* id,
                                               uint32_t offset,
                                               uint8_t maxDataSize,
                                               uint16_t pageSize,
                                               uint16_t responseSpacing);

bool sli_zigbee_af_ota_server_handling_page_request(void);

// This used to be static in ota-server.c as prepareResponse,
// made global because SE 1.4 requires a special treatment for OTA requests.
void sli_zigbee_af_ota_server_prepare_response(bool useDefaultResponse,
                                               uint8_t commandId,
                                               uint8_t status,
                                               uint8_t defaultResponsePayloadCommandId);
#endif // ZIGBEE_OTA_SERVER_H
