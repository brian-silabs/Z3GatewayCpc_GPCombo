/***************************************************************************//**
 * @file
 * @brief
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

#ifdef SL_ZIGBEE_AF_HAS_SECURITY_PROFILE_NONE
{
  SL_ZIGBEE_AF_SECURITY_PROFILE_NONE,
  SL_ZIGBEE_AF_SECURITY_PROFILE_NONE_TC_SECURITY_BITMASK,
  SL_ZIGBEE_AF_SECURITY_PROFILE_NONE_TC_EXTENDED_SECURITY_BITMASK,
  SL_ZIGBEE_AF_SECURITY_PROFILE_NONE_NODE_SECURITY_BITMASK,
  SL_ZIGBEE_AF_SECURITY_PROFILE_NONE_NODE_EXTENDED_SECURITY_BITMASK,
  SL_ZIGBEE_AF_SECURITY_PROFILE_NONE_TC_LINK_KEY_REQUEST_POLICY,
  SL_ZIGBEE_AF_SECURITY_PROFILE_NONE_APP_LINK_KEY_REQUEST_POLICY,
  SL_ZIGBEE_AF_SECURITY_PROFILE_NONE_PRECONFIGURED_KEY,
},
#endif
#ifdef SL_ZIGBEE_AF_HAS_SECURITY_PROFILE_HA
{
  SL_ZIGBEE_AF_SECURITY_PROFILE_HA,
  SL_ZIGBEE_AF_SECURITY_PROFILE_HA_TC_SECURITY_BITMASK,
  SL_ZIGBEE_AF_SECURITY_PROFILE_HA_TC_EXTENDED_SECURITY_BITMASK,
  SL_ZIGBEE_AF_SECURITY_PROFILE_HA_NODE_SECURITY_BITMASK,
  SL_ZIGBEE_AF_SECURITY_PROFILE_HA_NODE_EXTENDED_SECURITY_BITMASK,
  SL_ZIGBEE_AF_SECURITY_PROFILE_HA_TC_LINK_KEY_REQUEST_POLICY,
  SL_ZIGBEE_AF_SECURITY_PROFILE_HA_APP_LINK_KEY_REQUEST_POLICY,
  SL_ZIGBEE_AF_SECURITY_PROFILE_HA_PRECONFIGURED_KEY,
},
#endif
#ifdef SL_ZIGBEE_AF_HAS_SECURITY_PROFILE_HA12
{
  SL_ZIGBEE_AF_SECURITY_PROFILE_HA12,
  SL_ZIGBEE_AF_SECURITY_PROFILE_HA12_TC_SECURITY_BITMASK,
  SL_ZIGBEE_AF_SECURITY_PROFILE_HA12_TC_EXTENDED_SECURITY_BITMASK,
  SL_ZIGBEE_AF_SECURITY_PROFILE_HA12_NODE_SECURITY_BITMASK,
  SL_ZIGBEE_AF_SECURITY_PROFILE_HA12_NODE_EXTENDED_SECURITY_BITMASK,
  SL_ZIGBEE_AF_SECURITY_PROFILE_HA12_TC_LINK_KEY_REQUEST_POLICY,
  SL_ZIGBEE_AF_SECURITY_PROFILE_HA12_APP_LINK_KEY_REQUEST_POLICY,
  SL_ZIGBEE_AF_SECURITY_PROFILE_HA12_PRECONFIGURED_KEY,
},
#endif
#ifdef SL_ZIGBEE_AF_HAS_SECURITY_PROFILE_SE_TEST
{
  SL_ZIGBEE_AF_SECURITY_PROFILE_SE_TEST,
  SL_ZIGBEE_AF_SECURITY_PROFILE_SE_TEST_TC_SECURITY_BITMASK,
  SL_ZIGBEE_AF_SECURITY_PROFILE_SE_TEST_TC_EXTENDED_SECURITY_BITMASK,
  SL_ZIGBEE_AF_SECURITY_PROFILE_SE_TEST_NODE_SECURITY_BITMASK,
  SL_ZIGBEE_AF_SECURITY_PROFILE_SE_TEST_NODE_EXTENDED_SECURITY_BITMASK,
  SL_ZIGBEE_AF_SECURITY_PROFILE_SE_TEST_TC_LINK_KEY_REQUEST_POLICY,
  SL_ZIGBEE_AF_SECURITY_PROFILE_SE_TEST_APP_LINK_KEY_REQUEST_POLICY,
  SL_ZIGBEE_AF_SECURITY_PROFILE_SE_TEST_PRECONFIGURED_KEY,
},
#endif
#ifdef SL_ZIGBEE_AF_HAS_SECURITY_PROFILE_SE_FULL
{
  SL_ZIGBEE_AF_SECURITY_PROFILE_SE_FULL,
  SL_ZIGBEE_AF_SECURITY_PROFILE_SE_FULL_TC_SECURITY_BITMASK,
  SL_ZIGBEE_AF_SECURITY_PROFILE_SE_FULL_TC_EXTENDED_SECURITY_BITMASK,
  SL_ZIGBEE_AF_SECURITY_PROFILE_SE_FULL_NODE_SECURITY_BITMASK,
  SL_ZIGBEE_AF_SECURITY_PROFILE_SE_FULL_NODE_EXTENDED_SECURITY_BITMASK,
  SL_ZIGBEE_AF_SECURITY_PROFILE_SE_FULL_TC_LINK_KEY_REQUEST_POLICY,
  SL_ZIGBEE_AF_SECURITY_PROFILE_SE_FULL_APP_LINK_KEY_REQUEST_POLICY,
  SL_ZIGBEE_AF_SECURITY_PROFILE_SE_FULL_PRECONFIGURED_KEY,
},
#endif
#ifdef SL_ZIGBEE_AF_HAS_SECURITY_PROFILE_Z3
{
  SL_ZIGBEE_AF_SECURITY_PROFILE_Z3,
  SL_ZIGBEE_AF_SECURITY_PROFILE_Z3_TC_SECURITY_BITMASK,
  SL_ZIGBEE_AF_SECURITY_PROFILE_Z3_TC_EXTENDED_SECURITY_BITMASK,
  SL_ZIGBEE_AF_SECURITY_PROFILE_Z3_NODE_SECURITY_BITMASK,
  SL_ZIGBEE_AF_SECURITY_PROFILE_Z3_NODE_EXTENDED_SECURITY_BITMASK,
  SL_ZIGBEE_AF_SECURITY_PROFILE_Z3_TC_LINK_KEY_REQUEST_POLICY,
  SL_ZIGBEE_AF_SECURITY_PROFILE_Z3_APP_LINK_KEY_REQUEST_POLICY,
  SL_ZIGBEE_AF_SECURITY_PROFILE_Z3_PRECONFIGURED_KEY,
},
#endif
#ifdef SL_ZIGBEE_AF_HAS_SECURITY_PROFILE_CUSTOM
{
  SL_ZIGBEE_AF_SECURITY_PROFILE_CUSTOM,
  SL_ZIGBEE_AF_SECURITY_PROFILE_CUSTOM_TC_SECURITY_BITMASK,
  SL_ZIGBEE_AF_SECURITY_PROFILE_CUSTOM_TC_EXTENDED_SECURITY_BITMASK,
  SL_ZIGBEE_AF_SECURITY_PROFILE_CUSTOM_NODE_SECURITY_BITMASK,
  SL_ZIGBEE_AF_SECURITY_PROFILE_CUSTOM_NODE_EXTENDED_SECURITY_BITMASK,
  SL_ZIGBEE_AF_SECURITY_PROFILE_CUSTOM_TC_LINK_KEY_REQUEST_POLICY,
  SL_ZIGBEE_AF_SECURITY_PROFILE_CUSTOM_APP_LINK_KEY_REQUEST_POLICY,
  SL_ZIGBEE_AF_SECURITY_PROFILE_CUSTOM_PRECONFIGURED_KEY,
},
#endif
