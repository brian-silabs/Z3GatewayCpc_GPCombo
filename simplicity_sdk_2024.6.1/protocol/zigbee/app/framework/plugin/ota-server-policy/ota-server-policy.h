/***************************************************************************//**
 * @file
 * @brief A sample policy file that implements the callbacks for the
 * Zigbee Over-the-air bootload cluster server.
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

/**
 * @defgroup ota-server-policy OTA Server Policy
 * @ingroup component
 * @brief API and Callbacks for the OTA Server Policy Component
 *
 * Silicon Labs implementation of the server policies for the Zigbee
 * Over-the-air bootload cluster (a multi-hop, application bootloader).
 * This controls when a client can upgrade, when new images are made
 * available, and which version the client will download and install.
 * This component should be expanded to support the developer's own server
 * policy.
 *
 */

/**
 * @addtogroup ota-server-policy
 * @{
 */

#define OTA_SERVER_NO_RATE_LIMITING_FOR_CLIENT          0
#define OTA_SERVER_CLIENT_USES_MILLISECONDS             1
#define OTA_SERVER_CLIENT_USES_SECONDS                  2
#define OTA_SERVER_DISCOVER_CLIENT_DELAY_UNITS          3
#ifdef SL_ZIGBEE_TEST
 #define OTA_SERVER_DO_NOT_OVERRIDE_CLIENT_DELAY_UNITS  0xFF
#endif

/**
 * @name API
 * @{
 */
/** @brief GetClientDelayUnits.
 *
 * Called when the server receives an Image Block Request from a client that
 * supports rate limiting using the Minimum Block Period feature. This callback
 * gives the server a chance to decide which units the client uses for the
 * Minimum Block Period, seconds or milliseconds. The server can also return
 * OTA_SERVER_DISCOVER_CLIENT_DELAY_UNITS, which causes the plugin code to test
 * the client by sending it a preset delay value. The length of time the client
 * delays determines which units it uses. For more information on this feature,
 * see the plugin option descriptions under the OTA Server plugin.
 *
 * @param clientNodeId     Ver.: always
 * @param clientEui64      Ver.: always
 *
 * For return values, see ota-server-policy.h. An unknown return value will
 * result in the same behavior as if OTA_SERVER_CLIENT_USES_MILLISECONDS had
 * been returned.
 */

uint8_t sl_zigbee_af_ota_server_policy_get_client_delay_units(sl_802154_short_addr_t clientNodeId,
                                                              sl_802154_long_addr_t clientEui64);

/** @} */ // end of name API

/**
 * @name Callbacks
 * @{
 */

/**
 * @defgroup ota_server_policy_cb OTA Server Policy
 * @ingroup af_callback
 * @brief Callbacks for OTA Server Policy Component
 *
 */

/**
 * @addtogroup ota_server_policy_cb
 * @{
 */

uint8_t sl_zigbee_af_ota_server_image_block_request_cb(sl_zigbee_af_image_block_request_callback_struct_t* data);

/** @} */ // end of ota_server_policy_cb
/** @} */ // end of name Callbacks
/** @} */ // end of ota-server-policy

void sli_zigbee_af_ota_server_policy_print(void);

void sli_zigbee_af_ota_server_set_query_policy(uint8_t value);
void sli_zigbee_af_ota_server_set_block_request_policy(uint8_t value);
void sli_zigbee_af_ota_server_set_upgrade_policy(uint8_t value);

bool sli_zigbee_af_server_page_request_tick_callback(uint16_t relativeOffset, uint8_t blockSize);
void sli_zigbee_af_set_page_request_missed_block_modulus(uint16_t modulus);
void sli_zigbee_af_ota_server_set_page_request_policy(uint8_t value);
void sli_zigbee_af_ota_server_policy_set_min_block_request_period(uint16_t minBlockRequestPeriodMS);
