/***************************************************************************//**
 * @file
 * @brief CLI for the Update TC Link Key plugin.
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
#include "app/util/zigbee-framework/zigbee-device-common.h"
#include "update-tc-link-key.h"
#include "app/framework/plugin/network-steering/network-steering.h"
#include "app/framework/plugin/network-steering/network-steering-internal.h"

#include "app/util/serial/sl_zigbee_command_interpreter.h"
void sl_zigbee_af_set_t_c_link_key_update_timer_command(sl_cli_command_arg_t *arguments)
{
  uint32_t timeInMilliseconds = sl_cli_get_argument_uint32(arguments, 0);
  sl_zigbee_af_set_t_c_link_key_update_timer_milli_seconds(timeInMilliseconds);
}
