/***************************************************************************//**
 * @file mac-phy.h
 * @brief Definitions moved from phy.h. this file should prefereably included indirectly
 * through other umac header file upper-mac.h
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

#ifndef __MAC_PHY_H__
#define __MAC_PHY_H__

#if     PHY_THIS
  #define PHY_THIS_ID (PHY_THIS - 1)
#else//!PHY_THIS
  #define PHY_THIS_ID 0
#endif//PHY_THIS

typedef uint8_t RadioPowerMode;
// Radio power modes.
enum {
  SL_ZIGBEE_RADIO_POWER_MODE_RX_ON,
  SL_ZIGBEE_RADIO_POWER_MODE_OFF,
  SL_ZIGBEE_RADIO_POWER_MODE_ED_ON,
  SL_ZIGBEE_RADIO_POWER_MODE_DC_RX,
};

#define RADIO_TRANSMIT_CONFIG_DEFAULTS                           \
  {                                                              \
    true,  /* waitForAck */                                      \
    true,  /* checkCca */                                        \
    RADIO_CCA_ATTEMPT_MAX_DEFAULT,      /* ccaAttemptMax */      \
    RADIO_BACKOFF_EXPONENT_MIN_DEFAULT, /* backoffExponentMin */ \
    RADIO_BACKOFF_EXPONENT_MAX_DEFAULT, /* backoffExponentMax */ \
    RADIO_MINIMUM_BACKOFF_DEFAULT,      /* minimumBackoff */     \
    true  /* appendCrc */                                        \
  }

typedef struct {
  bool waitForAck;       // Wait for ACK if ACK request set in FCF.
  bool checkCca;         // Backoff and check CCA before transmit.
  uint8_t ccaAttemptMax;      // Number of CCA attempts before failure.
  uint8_t backoffExponentMin; // Backoff exponent for the initial CCA attempt.
  uint8_t backoffExponentMax; // Backoff exponent for the final CCA attempt(s).
  uint8_t minimumBackoff;     // Minimum number of backoffs.
  bool appendCrc;        // Append CRC to transmitted packets.
} RadioTransmitConfig;

#ifndef MAC_HAS_CHANNEL_PAGES
  #ifdef  MAC_TEST_STACK
    #define MAC_HAS_CHANNEL_PAGES 0
  #elif defined(ALT_MAC)
    #define MAC_HAS_CHANNEL_PAGES 1
  #else
    #define MAC_HAS_CHANNEL_PAGES (PHY_PRO2PLUS || PHY_DUAL || PHY_RAILGB || PHY_SIMULATION_GB || PHY_SIMULATION_DUAL || PHY_TRANSCEIVER_SIM)
  #endif
#endif//MAC_HAS_CHANNEL_PAGES

#if     MAC_HAS_CHANNEL_PAGES

  #define MAX_CHANNELS_PER_PAGE     27u // channels 0-26 // Must be < 32!
  #define CHANNEL_BITS              5u  // need 5 bits for 27 channels
// Some macros for messing with single-byte-encoded MAC Page+Channel values
  #define sli_802154mac_pg_chan_pg(macPgChan)  ((uint8_t)(macPgChan) >> CHANNEL_BITS)
  #define sli_802154mac_pg_chan_ch(macPgChan)  ((uint8_t)(macPgChan) & (BIT(CHANNEL_BITS) - 1))
  #define sli_802154mac_pg_chan(page, chan)   (((uint8_t)((page) << CHANNEL_BITS)) \
                                               | ((chan) & (BIT(CHANNEL_BITS) - 1)))

uint8_t sli_802154phy_get_channel_page_for_channel(uint8_t macPgChan);
uint8_t sli_802154phy_get_channel_page_in_use(void);

#else//!MAC_HAS_CHANNEL_PAGES

  #undef  MAC_HAS_CHANNEL_PAGES // Prevent some lame-o using #ifdef vs. #if
  #define MAX_CHANNELS_PER_PAGE     255u // channels 0-254
  #define CHANNEL_BITS              8u   // need 8 bits for 255 channels
// Some macros for messing with single-byte-encoded MAC Page+Channel values
  #define sli_802154mac_pg_chan_pg(macPgChan)  0
  #define sli_802154mac_pg_chan_ch(macPgChan)  (macPgChan)
  #define sli_802154mac_pg_chan(page, chan)   (chan)
  #define sli_802154phy_get_channel_page_for_channel(macPgChan)  (0)
  #define sli_802154phy_get_channel_page_in_use()                (0)
  #define sli_802154phy_get_channel_page_for_channel(macPgChan)  (0)

#endif//MAC_HAS_CHANNEL_PAGES

// 802.15.4 PHY payload length.
#define PHY_MAX_SIZE          127
// 802.15.4 PHY header length.
#define PHY_LENGTH_BYTE_SIZE  1
// 802.15.4 MAC footer length
#define PHY_APPENDED_CRC_SIZE 2

#define SL_MIN_802_15_4_CHANNEL_NUMBER  11
#define SL_MAX_802_15_4_CHANNEL_NUMBER  26

/**
 * @brief There are sixteen 802.15.4 channels.
 */
#define SL_NUM_802_15_4_CHANNELS \
  (SL_MAX_802_15_4_CHANNEL_NUMBER - SL_MIN_802_15_4_CHANNEL_NUMBER + 1)
//-------zigbee stack calls
void sli_802154phy_radio_init(RadioPowerMode initialRadioPowerMode);
void sli_802154phy_radio_seed_random(void);

#ifdef SL_ZIGBEE_TEST
bool _radioReceive(uint8_t *packet, uint32_t rxSynctime, uint8_t linkQuality);
void _radioTransmitComplete(void);
void simulatorSuspendRadioActivity(void);
void simulatorResumeRadioActivity(void);
#endif
#endif // __MAC_PHY_H__
