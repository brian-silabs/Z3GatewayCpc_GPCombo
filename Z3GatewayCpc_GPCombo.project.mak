####################################################################
# Automatically-generated file. Do not edit!                       #
# Makefile Version 16                                              #
####################################################################

BASE_SDK_PATH = /Users/brrodrig/SimplicityStudio/SDKs/simplicity_sdk_3
BASE_PKG_PATH = /Users/brrodrig/.silabs/slt/installs
UNAME:=$(shell $(POSIX_TOOL_PATH)uname -s | $(POSIX_TOOL_PATH)sed -e 's/^\(CYGWIN\).*/\1/' | $(POSIX_TOOL_PATH)sed -e 's/^\(MINGW\).*/\1/')
ifeq ($(UNAME),MINGW)
# Translate "C:/super" into "/C/super" for MinGW make.
SDK_PATH := /$(shell $(POSIX_TOOL_PATH)echo $(BASE_SDK_PATH) | sed s/://)
PKG_PATH := /$(shell $(POSIX_TOOL_PATH)echo $(BASE_PKG_PATH) | sed s/://)
endif
SDK_PATH ?= $(BASE_SDK_PATH)
PKG_PATH ?= $(BASE_PKG_PATH)
COPIED_SDK_PATH ?= simplicity_sdk_2024.12.0

# This uses the explicit build rules below
PROJECT_SOURCE_FILES =

C_SOURCE_FILES   += $(filter %.c, $(PROJECT_SOURCE_FILES))
CXX_SOURCE_FILES += $(filter %.cpp, $(PROJECT_SOURCE_FILES))
CXX_SOURCE_FILES += $(filter %.cc, $(PROJECT_SOURCE_FILES))
ASM_SOURCE_FILES += $(filter %.s, $(PROJECT_SOURCE_FILES))
ASM_SOURCE_FILES += $(filter %.S, $(PROJECT_SOURCE_FILES))
LIB_FILES        += $(filter %.a, $(PROJECT_SOURCE_FILES))

C_DEFS += \
 '-DSL_CODE_COMPONENT_BYTE_UTILITIES=byte_utilities' \
 '-DSL_COMPONENT_CATALOG_PRESENT=1' \
 '-DSL_CODE_COMPONENT_EVENT_QUEUE=event_queue' \
 '-DSL_CODE_COMPONENT_CORE=core' \
 '-DEZSP_HOST=1' \
 '-DGATEWAY_APP=1' \
 '-DPLATFORM_HEADER="platform-header.h"' \
 '-DSTACK_CORE_HEADER="stack/core/sl_zigbee_stack.h"' \
 '-DSTACK_HEADER="stack/include/sl_zigbee.h"' \
 '-DSTACK_TYPES_HEADER="stack/include/sl_zigbee_types.h"' \
 '-DEZSP_CPC=1' \
 '-DUSE_ZAP_CONFIG=1' \
 '-DEZSP_APPLICATION_HAS_MFGLIB_HANDLER=1' \
 '-DCONFIGURATION_HEADER="app/framework/util/config.h"'

ASM_DEFS += \
 '-DSL_CODE_COMPONENT_BYTE_UTILITIES=byte_utilities' \
 '-DSL_COMPONENT_CATALOG_PRESENT=1' \
 '-DSL_CODE_COMPONENT_EVENT_QUEUE=event_queue' \
 '-DSL_CODE_COMPONENT_CORE=core' \
 '-DEZSP_HOST=1' \
 '-DGATEWAY_APP=1' \
 '-DPLATFORM_HEADER="platform-header.h"' \
 '-DSTACK_CORE_HEADER="stack/core/sl_zigbee_stack.h"' \
 '-DSTACK_HEADER="stack/include/sl_zigbee.h"' \
 '-DSTACK_TYPES_HEADER="stack/include/sl_zigbee_types.h"' \
 '-DEZSP_CPC=1' \
 '-DUSE_ZAP_CONFIG=1' \
 '-DEZSP_APPLICATION_HAS_MFGLIB_HANDLER=1' \
 '-DCONFIGURATION_HEADER="app/framework/util/config.h"'

INCLUDES += \
 -Iautogen \
 -Iconfig \
 -I$(COPIED_SDK_PATH)/util/plugin/byte_utilities \
 -I$(COPIED_SDK_PATH)/platform/service/cli/inc \
 -I$(COPIED_SDK_PATH)/platform/service/cli/src \
 -I$(COPIED_SDK_PATH)/platform/CMSIS/Core/Include \
 -I$(COPIED_SDK_PATH)/platform/common/inc \
 -I$(COPIED_SDK_PATH)/platform/emlib/host/inc \
 -I$(COPIED_SDK_PATH)/platform/service/iostream/inc \
 -I$(COPIED_SDK_PATH)/util/third_party/printf \
 -I$(COPIED_SDK_PATH)/util/third_party/printf/inc \
 -I$(COPIED_SDK_PATH)/util/silicon_labs/silabs_core \
 -I$(COPIED_SDK_PATH)/util/silicon_labs/silabs_core/event_queue \
 -I$(COPIED_SDK_PATH)/platform/service/system/inc \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/address-table \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/af-support \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/groups-server \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/basic \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/util/serial \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/service-function \
 -I$(COPIED_SDK_PATH)/platform/radio/rail_lib/plugin \
 -I$(COPIED_SDK_PATH)/platform/radio/rail_lib/plugin/coexistence/protocol/ieee802154_uc \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/color-control-server \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/concentrator \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/debug-print \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ezmode-commissioning \
 -I$(COPIED_SDK_PATH)/. \
 -I$(COPIED_SDK_PATH)/protocol/zigbee \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/util/zigbee-framework \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/stack \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/stack/platform/host \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/stack/include \
 -I$(COPIED_SDK_PATH)/platform/radio/mac \
 -I$(COPIED_SDK_PATH)/platform/service/legacy_hal/inc \
 -I$(COPIED_SDK_PATH)/platform/service/legacy_common_ash/inc \
 -I$(COPIED_SDK_PATH)/platform/service/token_manager/inc \
 -I$(COPIED_SDK_PATH)/platform/emlib/inc \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/cpc \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/green-power-client \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/stack/gp \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/green-power-server \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/green-power-translation-table \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/common \
 -I$(COPIED_SDK_PATH)/platform/service/legacy_host/inc \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/stack/config \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/stack/zll \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/stack/core \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ias-zone-client \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/level-control \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/manufacturing-library-cli \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator-security \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/on-off \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-common \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server-policy \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-simple \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-common \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-posix-filesystem \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/poll-control-client \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/scan-dispatch \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/stack/security \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/inc \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/signature-decode \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/simple-metering-client \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/test-harness \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/xncp-test-harness \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/time-server \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-broadcast \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-unicast \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/update-tc-link-key \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/include \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/util/counters \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/util/common \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/util/security \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl-framework-core

GROUP_START =
GROUP_END =

PROJECT_LIBS = \
 -lpthread \
 -lc \
 -lm \
 -lcpc

LIBS += $(GROUP_START) $(PROJECT_LIBS) $(GROUP_END)

LIB_FILES += $(filter %.a, $(PROJECT_LIBS))

C_FLAGS += \
 -std=c18 \
 -Wall \
 -Wextra \
 -Os \
 -Wno-unused-parameter \
 -Wno-missing-field-initializers \
 -Wno-missing-braces

CXX_FLAGS += \
 -std=c++17 \
 -Wall \
 -Wextra \
 -Os \
 -Wno-unused-parameter \
 -Wno-missing-field-initializers \
 -Wno-missing-braces

ASM_FLAGS += \

LD_FLAGS += \


####################################################################
# Pre/Post Build Rules                                             #
####################################################################
pre-build:
	# No pre-build defined

post-build: $(OUTPUT_DIR)/$(PROJECTNAME).out
	# No post-build defined

####################################################################
# SDK Build Rules                                                  #
####################################################################
$(OUTPUT_DIR)/sdk/platform/common/src/sl_assert.o: $(COPIED_SDK_PATH)/platform/common/src/sl_assert.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/common/src/sl_assert.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/common/src/sl_assert.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_assert.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_assert.o

$(OUTPUT_DIR)/sdk/platform/common/src/sl_core_mock.o: $(COPIED_SDK_PATH)/platform/common/src/sl_core_mock.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/common/src/sl_core_mock.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/common/src/sl_core_mock.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_core_mock.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_core_mock.o

$(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.o: $(COPIED_SDK_PATH)/platform/common/src/sl_slist.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/common/src/sl_slist.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/common/src/sl_slist.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.o

$(OUTPUT_DIR)/sdk/platform/common/src/sl_string.o: $(COPIED_SDK_PATH)/platform/common/src/sl_string.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/common/src/sl_string.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/common/src/sl_string.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_string.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_string.o

$(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/coexistence/protocol/ieee802154_uc/sl_zigbee_coexistence_cli.o: $(COPIED_SDK_PATH)/platform/radio/rail_lib/plugin/coexistence/protocol/ieee802154_uc/sl_zigbee_coexistence_cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/radio/rail_lib/plugin/coexistence/protocol/ieee802154_uc/sl_zigbee_coexistence_cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/radio/rail_lib/plugin/coexistence/protocol/ieee802154_uc/sl_zigbee_coexistence_cli.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/coexistence/protocol/ieee802154_uc/sl_zigbee_coexistence_cli.d
OBJS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/coexistence/protocol/ieee802154_uc/sl_zigbee_coexistence_cli.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli.o: $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_arguments.o: $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_arguments.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_arguments.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_arguments.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_arguments.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_arguments.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_command.o: $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_command.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_command.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_command.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_command.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_command.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_input.o: $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_input.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_input.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_input.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_input.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_input.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_io.o: $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_io.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_io.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_io.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_io.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_io.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_threaded_host.o: $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_threaded_host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_threaded_host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_threaded_host.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_threaded_host.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_threaded_host.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_tokenize.o: $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_tokenize.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_tokenize.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_tokenize.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_tokenize.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_tokenize.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.o: $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_stdio.o: $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_stdio.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_stdio.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_stdio.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_stdio.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_stdio.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/crc.o: $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/crc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/crc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/crc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/crc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/crc.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/micro_host.o: $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/micro_host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/micro_host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/micro_host.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/micro_host.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/micro_host.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/random.o: $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/random.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/random.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/random.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/random.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/random.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/system-timer.o: $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/system-timer.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/system-timer.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/system-timer.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/system-timer.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/system-timer.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_host/src/token.o: $(COPIED_SDK_PATH)/platform/service/legacy_host/src/token.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/legacy_host/src/token.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/legacy_host/src/token.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_host/src/token.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_host/src/token.o

$(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_init.o: $(COPIED_SDK_PATH)/platform/service/system/src/sl_system_init.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/system/src/sl_system_init.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/system/src/sl_system_init.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_init.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_init.o

$(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_process_action.o: $(COPIED_SDK_PATH)/platform/service/system/src/sl_system_process_action.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/system/src/sl_system_process_action.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/system/src/sl_system_process_action.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_process_action.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_process_action.o

$(OUTPUT_DIR)/sdk/platform/service/token_manager/src/sl_token_def.o: $(COPIED_SDK_PATH)/platform/service/token_manager/src/sl_token_def.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/token_manager/src/sl_token_def.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/token_manager/src/sl_token_def.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/token_manager/src/sl_token_def.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/token_manager/src/sl_token_def.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/cpc/cpc-host-ui.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/cpc/cpc-host-ui.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/cpc/cpc-host-ui.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/cpc/cpc-host-ui.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/cpc/cpc-host-ui.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/cpc/cpc-host-ui.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/cpc/cpc-host.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/cpc/cpc-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/cpc/cpc-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/cpc/cpc-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/cpc/cpc-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/cpc/cpc-host.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-io.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-io.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-io.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-io.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-io.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-io.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-queues.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-queues.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-queues.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-queues.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-queues.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-queues.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-ui.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-ui.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-ui.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-ui.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-ui.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-ui.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/core-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/core-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/core-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/core-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/core-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/core-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/network-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/network-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/network-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/network-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/network-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/network-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/option-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/option-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/option-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/option-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/option-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/option-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/security-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/security-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/security-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/security-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/security-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/security-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/zcl-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/zcl-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/zcl-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/zcl-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/zcl-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/zcl-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/zdo-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/zdo-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/zdo-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/zdo-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/zdo-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/zdo-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/sl_zigbee_system_common.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/common/sl_zigbee_system_common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/common/sl_zigbee_system_common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/common/sl_zigbee_system_common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/sl_zigbee_system_common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/sl_zigbee_system_common.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_app_framework_host_cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_app_framework_host_cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_app_framework_host_cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_app_framework_host_cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_app_framework_host_cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_app_framework_host_cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_app_framework_sleep.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_app_framework_sleep.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_app_framework_sleep.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_app_framework_sleep.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_app_framework_sleep.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_app_framework_sleep.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_app_framework_sleep_cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_app_framework_sleep_cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_app_framework_sleep_cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_app_framework_sleep_cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_app_framework_sleep_cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_app_framework_sleep_cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/ezsp/ezsp-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/ezsp/ezsp-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/ezsp/ezsp-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/ezsp/ezsp-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/ezsp/ezsp-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/ezsp/ezsp-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/ncp-configuration/ncp-configuration.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/ncp-configuration/ncp-configuration.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/ncp-configuration/ncp-configuration.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/ncp-configuration/ncp-configuration.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/ncp-configuration/ncp-configuration.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/ncp-configuration/ncp-configuration.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/address-table/address-table-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/address-table/address-table-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/address-table/address-table-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/address-table/address-table-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/address-table/address-table-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/address-table/address-table-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/address-table/address-table.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/address-table/address-table.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/address-table/address-table.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/address-table/address-table.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/address-table/address-table.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/address-table/address-table.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/af-support/af-support-host.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/af-support/af-support-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/af-support/af-support-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/af-support/af-support-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/af-support/af-support-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/af-support/af-support-host.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/basic/basic-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/basic/basic-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/basic/basic-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/basic/basic-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/basic/basic-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/basic/basic-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/basic/basic.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/basic/basic.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/basic/basic.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/basic/basic.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/basic/basic.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/basic/basic.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/af-counters.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/af-counters.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/af-counters.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/af-counters.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/af-counters.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/af-counters.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-ota-host.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-ota-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-ota-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-ota-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-ota-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-ota-host.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/debug-print/sl_zigbee_debug_print.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/debug-print/sl_zigbee_debug_print.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/debug-print/sl_zigbee_debug_print.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/debug-print/sl_zigbee_debug_print.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/debug-print/sl_zigbee_debug_print.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/debug-print/sl_zigbee_debug_print.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ezmode-commissioning-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ezmode-commissioning-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ezmode-commissioning-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ezmode-commissioning-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ezmode-commissioning-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ezmode-commissioning-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/green-power-common/green-power-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/green-power-common/green-power-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/green-power-common/green-power-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/green-power-common/green-power-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/green-power-common/green-power-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/green-power-common/green-power-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify-feedback/identify-feedback.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify-feedback/identify-feedback.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify-feedback/identify-feedback.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify-feedback/identify-feedback.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify-feedback/identify-feedback.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify-feedback/identify-feedback.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/level-control/level-control-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/level-control/level-control-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/level-control/level-control-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/level-control/level-control-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/level-control/level-control-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/level-control/level-control-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/level-control/level-control.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/level-control/level-control.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/level-control/level-control.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/level-control/level-control.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/level-control/level-control.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/level-control/level-control.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/manufacturing-library-cli/manufacturing-library-cli-host.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/manufacturing-library-cli/manufacturing-library-cli-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/manufacturing-library-cli/manufacturing-library-cli-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/manufacturing-library-cli/manufacturing-library-cli-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/manufacturing-library-cli/manufacturing-library-cli-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/manufacturing-library-cli/manufacturing-library-cli-host.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator/network-creator.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator/network-creator.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator/network-creator.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator/network-creator.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator/network-creator.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator/network-creator.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-v2.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-v2.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-v2.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-v2.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-v2.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-v2.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/on-off/on-off-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/on-off/on-off-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/on-off/on-off-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/on-off/on-off-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/on-off/on-off-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/on-off/on-off-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/on-off/on-off.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/on-off/on-off.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/on-off/on-off.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/on-off/on-off.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/on-off/on-off.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/on-off/on-off.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-common/ota-common.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-common/ota-common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-common/ota-common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-common/ota-common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-common/ota-common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-common/ota-common.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-dynamic-block-period.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-dynamic-block-period.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-dynamic-block-period.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-dynamic-block-period.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-dynamic-block-period.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-dynamic-block-period.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-page-request.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-page-request.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-page-request.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-page-request.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-page-request.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-page-request.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-storage-posix-filesystem/ota-storage-linux.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-posix-filesystem/ota-storage-linux.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-posix-filesystem/ota-storage-linux.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-posix-filesystem/ota-storage-linux.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-storage-posix-filesystem/ota-storage-linux.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-storage-posix-filesystem/ota-storage-linux.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting-default-configuration.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting-default-configuration.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting-default-configuration.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting-default-configuration.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting-default-configuration.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting-default-configuration.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/scan-dispatch/scan-dispatch.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/scan-dispatch/scan-dispatch.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/scan-dispatch/scan-dispatch.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/scan-dispatch/scan-dispatch.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/scan-dispatch/scan-dispatch.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/scan-dispatch/scan-dispatch.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/stack-diagnostics/stack-diagnostics.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/stack-diagnostics/stack-diagnostics.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/stack-diagnostics/stack-diagnostics.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/stack-diagnostics/stack-diagnostics.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/stack-diagnostics/stack-diagnostics.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/stack-diagnostics/stack-diagnostics.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/test-harness/read-write-attributes.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/test-harness/read-write-attributes.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/test-harness/read-write-attributes.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/test-harness/read-write-attributes.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/test-harness/read-write-attributes.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/test-harness/read-write-attributes.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/test-harness/test-harness-host.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/test-harness/test-harness-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/test-harness/test-harness-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/test-harness/test-harness-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/test-harness/test-harness-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/test-harness/test-harness-host.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/test-harness/test-harness.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/test-harness/test-harness.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/test-harness/test-harness.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/test-harness/test-harness.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/test-harness/test-harness.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/test-harness/test-harness.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/time-server/time-server.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/time-server/time-server.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/time-server/time-server.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/time-server/time-server.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/time-server/time-server.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/time-server/time-server.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-broadcast/trust-center-nwk-key-update-broadcast.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-broadcast/trust-center-nwk-key-update-broadcast.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-broadcast/trust-center-nwk-key-update-broadcast.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-broadcast/trust-center-nwk-key-update-broadcast.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-broadcast/trust-center-nwk-key-update-broadcast.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-broadcast/trust-center-nwk-key-update-broadcast.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-periodic/trust-center-nwk-key-update-periodic.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-periodic/trust-center-nwk-key-update-periodic.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-periodic/trust-center-nwk-key-update-periodic.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-periodic/trust-center-nwk-key-update-periodic.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-periodic/trust-center-nwk-key-update-periodic.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-periodic/trust-center-nwk-key-update-periodic.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-unicast/trust-center-nwk-key-update-unicast.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-unicast/trust-center-nwk-key-update-unicast.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-unicast/trust-center-nwk-key-update-unicast.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-unicast/trust-center-nwk-key-update-unicast.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-unicast/trust-center-nwk-key-update-unicast.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-unicast/trust-center-nwk-key-update-unicast.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl-framework-core/zcl-framework-core-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl-framework-core/zcl-framework-core-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl-framework-core/zcl-framework-core-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl-framework-core/zcl-framework-core-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl-framework-core/zcl-framework-core-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl-framework-core/zcl-framework-core-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-custom-cluster-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-custom-cluster-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-custom-cluster-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-custom-cluster-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-custom-cluster-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-custom-cluster-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-global-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-global-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-global-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-global-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-global-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-global-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-node.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/af-node.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/af-node.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/af-node.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-node.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-node.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-security-common.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/af-security-common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/af-security-common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/af-security-common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-security-common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-security-common.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-trust-center.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/af-trust-center.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/af-trust-center.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/af-trust-center.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-trust-center.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-trust-center.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/crypto-state.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/crypto-state.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/crypto-state.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/crypto-state.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/crypto-state.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/crypto-state.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/service-function/sl_service_function.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/service-function/sl_service_function.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/service-function/sl_service_function.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/service-function/sl_service_function.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/service-function/sl_service_function.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/service-function/sl_service_function.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/signature-decode/sl_signature_decode.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/signature-decode/sl_signature_decode.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/signature-decode/sl_signature_decode.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/signature-decode/sl_signature_decode.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/signature-decode/sl_signature_decode.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/signature-decode/sl_signature_decode.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-common.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/af-common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/af-common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/af-common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-common.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-event.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/af-event.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/af-event.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/af-event.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-event.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-event.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-host.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/af-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/af-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/af-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-host.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-size.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/attribute-size.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/attribute-size.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/attribute-size.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-size.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-size.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-storage.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/attribute-storage.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/attribute-storage.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/attribute-storage.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-storage.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-storage.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-table.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/attribute-table.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/attribute-table.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/attribute-table.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-table.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-table.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/client-api.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/client-api.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/client-api.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/client-api.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/client-api.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/client-api.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/global-callback.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/global-callback.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/global-callback.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/global-callback.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/global-callback.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/global-callback.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/global-other-callback.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/global-other-callback.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/global-other-callback.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/global-other-callback.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/global-other-callback.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/global-other-callback.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/message.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/message.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/message.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/message.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/message.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/message.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/multi-network.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/multi-network.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/multi-network.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/multi-network.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/multi-network.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/multi-network.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/print-formatter.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/print-formatter.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/print-formatter.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/print-formatter.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/print-formatter.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/print-formatter.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/print.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/print.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/print.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/print.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/print.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/print.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/process-cluster-message.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/process-cluster-message.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/process-cluster-message.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/process-cluster-message.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/process-cluster-message.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/process-cluster-message.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/process-global-message.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/process-global-message.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/process-global-message.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/process-global-message.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/process-global-message.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/process-global-message.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/service-discovery-common.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/service-discovery-common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/service-discovery-common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/service-discovery-common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/service-discovery-common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/service-discovery-common.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/service-discovery-host.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/service-discovery-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/service-discovery-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/service-discovery-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/service-discovery-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/service-discovery-host.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/time-util.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/time-util.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/time-util.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/time-util.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/time-util.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/time-util.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/util.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/util.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/util.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/util.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/util.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/util.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/zcl-util.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/zcl-util.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/zcl-util.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/zcl-util.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/zcl-util.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/zcl-util.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/common/library.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/common/library.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/common/library.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/common/library.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/common/library.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/common/library.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-callbacks.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-callbacks.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-callbacks.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-callbacks.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-callbacks.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-callbacks.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-enum-decode.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-enum-decode.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-enum-decode.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-enum-decode.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-enum-decode.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-enum-decode.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-frame-utilities.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-frame-utilities.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-frame-utilities.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-frame-utilities.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-frame-utilities.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-frame-utilities.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/serial-interface-cpc.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/serial-interface-cpc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/serial-interface-cpc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/serial-interface-cpc.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/serial-interface-cpc.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/serial-interface-cpc.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/security/security-address-cache-host.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/security/security-address-cache-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/security/security-address-cache-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/security/security-address-cache-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/security/security-address-cache-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/security/security-address-cache-host.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/serial/linux-serial.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/serial/linux-serial.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/serial/linux-serial.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/serial/linux-serial.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/serial/linux-serial.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/serial/linux-serial.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/serial/sl_zigbee_command_interpreter.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/serial/sl_zigbee_command_interpreter.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/serial/sl_zigbee_command_interpreter.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/serial/sl_zigbee_command_interpreter.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/serial/sl_zigbee_command_interpreter.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/serial/sl_zigbee_command_interpreter.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/zigbee-framework/zigbee-device-common.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/zigbee-framework/zigbee-device-common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/zigbee-framework/zigbee-device-common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/zigbee-framework/zigbee-device-common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/zigbee-framework/zigbee-device-common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/zigbee-framework/zigbee-device-common.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/zigbee-framework/zigbee-device-host.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/zigbee-framework/zigbee-device-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/zigbee-framework/zigbee-device-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/zigbee-framework/zigbee-device-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/zigbee-framework/zigbee-device-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/zigbee-framework/zigbee-device-host.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/config/sl_zigbee_configuration_host_access.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/config/sl_zigbee_configuration_host_access.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/config/sl_zigbee_configuration_host_access.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/config/sl_zigbee_configuration_host_access.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/config/sl_zigbee_configuration_host_access.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/config/sl_zigbee_configuration_host_access.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/zigbee-security-manager-host.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/security/zigbee-security-manager-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/security/zigbee-security-manager-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/security/zigbee-security-manager-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/zigbee-security-manager-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/zigbee-security-manager-host.o

$(OUTPUT_DIR)/sdk/util/plugin/byte_utilities/byte-utilities.o: $(COPIED_SDK_PATH)/util/plugin/byte_utilities/byte-utilities.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/plugin/byte_utilities/byte-utilities.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/plugin/byte_utilities/byte-utilities.c
CDEPS += $(OUTPUT_DIR)/sdk/util/plugin/byte_utilities/byte-utilities.d
OBJS += $(OUTPUT_DIR)/sdk/util/plugin/byte_utilities/byte-utilities.o

$(OUTPUT_DIR)/sdk/util/silicon_labs/silabs_core/event_queue/event-queue.o: $(COPIED_SDK_PATH)/util/silicon_labs/silabs_core/event_queue/event-queue.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/silicon_labs/silabs_core/event_queue/event-queue.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/silicon_labs/silabs_core/event_queue/event-queue.c
CDEPS += $(OUTPUT_DIR)/sdk/util/silicon_labs/silabs_core/event_queue/event-queue.d
OBJS += $(OUTPUT_DIR)/sdk/util/silicon_labs/silabs_core/event_queue/event-queue.o

$(OUTPUT_DIR)/sdk/util/third_party/printf/printf.o: $(COPIED_SDK_PATH)/util/third_party/printf/printf.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/third_party/printf/printf.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/printf/printf.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/printf/printf.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/printf/printf.o

$(OUTPUT_DIR)/sdk/util/third_party/printf/src/iostream_printf.o: $(COPIED_SDK_PATH)/util/third_party/printf/src/iostream_printf.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/third_party/printf/src/iostream_printf.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/printf/src/iostream_printf.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/printf/src/iostream_printf.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/printf/src/iostream_printf.o

$(OUTPUT_DIR)/project/app.o: app.c
	@$(POSIX_TOOL_PATH)echo 'Building app.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ app.c
CDEPS += $(OUTPUT_DIR)/project/app.d
OBJS += $(OUTPUT_DIR)/project/app.o

$(OUTPUT_DIR)/project/autogen/sl_cli_command_table.o: autogen/sl_cli_command_table.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_cli_command_table.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_cli_command_table.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_cli_command_table.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_cli_command_table.o

$(OUTPUT_DIR)/project/autogen/sl_cli_instances.o: autogen/sl_cli_instances.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_cli_instances.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_cli_instances.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_cli_instances.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_cli_instances.o

$(OUTPUT_DIR)/project/autogen/sl_cluster_service_gen.o: autogen/sl_cluster_service_gen.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_cluster_service_gen.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_cluster_service_gen.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_cluster_service_gen.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_cluster_service_gen.o

$(OUTPUT_DIR)/project/autogen/sl_event_handler.o: autogen/sl_event_handler.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_event_handler.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_event_handler.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_event_handler.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_event_handler.o

$(OUTPUT_DIR)/project/autogen/sl_iostream_handles.o: autogen/sl_iostream_handles.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_iostream_handles.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_iostream_handles.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_iostream_handles.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_iostream_handles.o

$(OUTPUT_DIR)/project/autogen/sli_cli_hooks.o: autogen/sli_cli_hooks.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sli_cli_hooks.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sli_cli_hooks.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sli_cli_hooks.d
OBJS += $(OUTPUT_DIR)/project/autogen/sli_cli_hooks.o

$(OUTPUT_DIR)/project/autogen/zap-cli.o: autogen/zap-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/zap-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/zap-cli.c
CDEPS += $(OUTPUT_DIR)/project/autogen/zap-cli.d
OBJS += $(OUTPUT_DIR)/project/autogen/zap-cli.o

$(OUTPUT_DIR)/project/autogen/zap-cluster-command-parser.o: autogen/zap-cluster-command-parser.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/zap-cluster-command-parser.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/zap-cluster-command-parser.c
CDEPS += $(OUTPUT_DIR)/project/autogen/zap-cluster-command-parser.d
OBJS += $(OUTPUT_DIR)/project/autogen/zap-cluster-command-parser.o

$(OUTPUT_DIR)/project/autogen/zap-event.o: autogen/zap-event.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/zap-event.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/zap-event.c
CDEPS += $(OUTPUT_DIR)/project/autogen/zap-event.d
OBJS += $(OUTPUT_DIR)/project/autogen/zap-event.o

$(OUTPUT_DIR)/project/autogen/zigbee_common_callback_dispatcher.o: autogen/zigbee_common_callback_dispatcher.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/zigbee_common_callback_dispatcher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/zigbee_common_callback_dispatcher.c
CDEPS += $(OUTPUT_DIR)/project/autogen/zigbee_common_callback_dispatcher.d
OBJS += $(OUTPUT_DIR)/project/autogen/zigbee_common_callback_dispatcher.o

$(OUTPUT_DIR)/project/autogen/zigbee_host_callback_dispatcher.o: autogen/zigbee_host_callback_dispatcher.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/zigbee_host_callback_dispatcher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/zigbee_host_callback_dispatcher.c
CDEPS += $(OUTPUT_DIR)/project/autogen/zigbee_host_callback_dispatcher.d
OBJS += $(OUTPUT_DIR)/project/autogen/zigbee_host_callback_dispatcher.o

$(OUTPUT_DIR)/project/autogen/zigbee_stack_callback_dispatcher.o: autogen/zigbee_stack_callback_dispatcher.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/zigbee_stack_callback_dispatcher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/zigbee_stack_callback_dispatcher.c
CDEPS += $(OUTPUT_DIR)/project/autogen/zigbee_stack_callback_dispatcher.d
OBJS += $(OUTPUT_DIR)/project/autogen/zigbee_stack_callback_dispatcher.o

$(OUTPUT_DIR)/project/autogen/zigbee_zcl_callback_dispatcher.o: autogen/zigbee_zcl_callback_dispatcher.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/zigbee_zcl_callback_dispatcher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/zigbee_zcl_callback_dispatcher.c
CDEPS += $(OUTPUT_DIR)/project/autogen/zigbee_zcl_callback_dispatcher.d
OBJS += $(OUTPUT_DIR)/project/autogen/zigbee_zcl_callback_dispatcher.o

$(OUTPUT_DIR)/project/main.o: main.c
	@$(POSIX_TOOL_PATH)echo 'Building main.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ main.c
CDEPS += $(OUTPUT_DIR)/project/main.d
OBJS += $(OUTPUT_DIR)/project/main.o

# Automatically-generated Simplicity Studio Metadata
# Please do not edit or delete these lines!
# SIMPLICITY_STUDIO_METADATA=eJztvXuT3DaSL/pVHPrj/nGO2cX3w9czE15ZM6t77bWOJe/G7Gqjgs1iVXPEImtIltStjfnuByBIFh8gCQIJFr2x+7C62WTmLxOJRAJIJP7r1btff/n/3rz+sP/1l18+vPru1X99fPXrm59++PD2X9/s23/6+Oq7j68+vvrHq2+bL97/8tuvr9+8Rx99/6fnc/zN5zDLozT5w8dX2oP68dU3YRKkhyg5oQe/ffiz4n589ac/fky+v2Tp38Kg+Ab9ewmz4uV9gP5F71TPP75CL33zzffHND6E2TeJf8Z/9K9FegqT6o+DPz/kcbDPC78ImzfwO1EcNm8EWbAP0uQYnfCPCN41i9Bz/M53u99yhH33mGXpIYtOu/fR+RJHQYTAFddDlO4+W/svafYpv/hBuPt34y+I0Rf/5fUl2P/l3ev0/JjuKoC7G5LdgOWuBr8j6BtZWji/+hcliKMHeQhbHHbjCK55EWZKkJ7PfnJQLn6G+EsHNcZ0Kc6ne+B8msJZvZoX2TUoctkAh9zmkK2DaAZJ2VNkA6mZjOIIE/8xDg9KhNzXGbmvGrzsVpvkO472c5gUkjtmw2MGhWT91DxGUUSyzTiatuBLFknXQsNjFEWRfgoT2cZ6YzKO4+USykZRsaBiyOM9Gub2VS/aF7h3SewoY+zYsT0V53hdeITjFMIn9HIcyrSmIaMpPFGCYqskQC9Kb8kOKzZM0rXUYTWCKSL6TNNPcpXU40NF8+uHN3v03SVNkO+WqZ8ho9EWq9/aB37hx6nMiGOM3Ri2coiruoLMKJbGig2T1F43YDWGKUpRaBv653XcE40bMzKpCqNxm0UWJVGxls+aYEqPG6LTYxjuvwao4/hx/OgHn/aHCPEqgie587pZxjx4JYbls4yn8PrHfTWJ3R+vSVBEqdyAcZrrDNIy1Nw/hf4B4VkF5YDj+OhPxEEYPkdBuEdkZMclVIZL8EmOUagMp1oYuQRku3fp7ZOs+TBL7/GTrKcw48g/Te6j6GnenKilq3qa9xTqJzTs3UfTU5y5EEvX8hRnKmLsU6q9gyjMpcHrsyFYOkv3vU0IsrbY2qKgTfjxK/vw2Ue4ZKyOEAa7UXZUjfqHQxbmuVIuCshbh62wjXGjQgvSOMUr7UmRpbGCh5Vy4V0uwhmmI0BRYIs+8It0DYBUZtOONAtbNiEP2zi/Eb1dExQx5CvobMBoLGyqRDiEj9fTvlxwla61Oa5UqOHXc3oIy32CKMdbr2TXQC7SGaZUoJGfK1/TJMT7jshupWMc50eHd0AvRccX5RiGBzwMyQc4wZEKMQ4/h3HjkmTDG+NGhZYE9bbaFTkkZBDS4U1xpEMMC0xZCbJwFf88zo8JXh4GCFbxsjpOCuNJwGiuF2ZrOJ0JhlSAaeGvFSxQWY2DQmr2T8R9rtBTJllSQV7SuNXz13HX0zypMLPwkqLAfAXTo3GiBw6Bnyj1/EU6rDFudGiYTaicw6LqPeu06yxbOli8woFE808JmhpGgfzQcIojFWIR5oXy5GcJnsfIRjfCjA4sOodrOT46Lzqs7IpkwFMW9G7y5ZPyKXxRrpcDoq2gCXaUHqJAPt5lIKiCVK8XgRJHCaEgG/Yky6kZ3yEsl2BXmu8NuNGhBbFyzNDPJOxAc0Tp+ptkOZ2cIX3KxzA/PpHvpatpyIfeAZLoGRniY+ZnK5g+ndn4zn4m39yHfOhT8zPCTd4kE3rp0/JxhvQ1v6OSXy84tJG/4EdjNeYeatxf/YtEj9DhMr+ymze89vnh015XdfNB03GSOz0d/VpEcScRvfPXS3w9RUnr74M3Hl+KcI+JRGTtufVmT2P4TaV5U8Jq/ZjoO8x0R0TZdfHuhqB2zBLAWyGABE9dCXr5+7QH3fYsnqLssL/4WfEy1ezlot9x0NxdU8QHCTov9Bez6pQLQm11k2jJuiMQdgjzjgKrZxR9HVKEj5KFwq9tTRThEeaB8E+Mwrfn5ZtpzdEGpMDdgP7pKl/chXPkC9CgsY/9x3yqD6P30BvlQDzdkUmy29+v4bX/Yj+UwC8q5YurN39b6l1LtF0L/a4HcMcqzNrGsVgY1m7aHbuvx2OY7c9+4p/CbLpp4/DkBy8KEuhTWCjky+2opSvJbgzsZHuT17bW4D3J+iBZJCLfnuUcewEVq4t01qDnPOPg8GIvtvWLY5qdx6PfKjVsyoeiafG075yNA8jces2WqQXfVfLtEP9y7L9BmTSrajUAn2hZNQiewX0DxIJe3mFCbvyUk4dTEkTJ5bpqj57D3wBish6cuBp9XdXTzhpQCxOLDH52up4lnRbhFqIDiqklnjKcPnwo09u2JMkA2PIIZ3YK2jHdFUNWqux48tkHtKgvbUiANqYl/nhDIrQgMUiwIeSsOo/SDYGu0CzzuxuC3wE1I0W0seGDiEFBxSTHNgKRtgyskUhUG96mwKd8I/eG+sIA2PKp3HAiVS1MCq45t0763VVjNYhabW1Qc23frNHmxeHOPnxMjBs0CUvnbXXds+c2wldBaxvUwjbcohg3aADdN3/JixCg8xI65SHduxo+wVGbfQ/VXONXr1+yNAjzfO+XB0y3J84Qn5zO3NbePTtCpYSqG/RQ8bXp5sQZ4gPo3GS9ff/kx4Id/BwFWXr/cOYmT9kjuqgmDSHIgi0hr+BMQs7QHDe9bzDUQ31DNN3pSotWcHKnjMOf3PD7uKCcZn9vIhp0t6GKyrfu6oVayik9UYlodwM2aGKafgbiD13NQPanbQmO/31aKHJnL68o7jye9AS6IZreRj/rz89KFuZhoRzC430XO3oi0LBNChOH990x6uGv4ExCLgev6kTNlrD3cTEIcf8dR6oMbPuO5bubAz8Lu6aikBozWxKAAm06XtjoYDifx5GmRZxiGZUwRAH8fVc9+sMADdxsjLwhASo4LDHyhlDfEE0C314QxOYo778ZTfOW7DvRzHPmqnKPnz8J5hEhChsa5W9ildrrggNccUDtIbjkUG5Ub2L6iGQp548NIgmrbYT2BgyklBabRoMIwCpINTx6PivHWjMhhyYGdzWPjlD1Cm0HmnCi5EA7r39+//b9VN7j69mk8bdJEF8PMwnjwTmP8rLwbCSnjOy8mktRd1ieXQV5N0Q1Hc+Ur1dXimxLhhaoSRGKr/iYWRE+32fMpeDvImLQ/ym4T1Q5qvsKEHznJAPpVO8cDgPDA6gHXPPKz/PoGAX+3fYqiCxN1h8d1cThnTJpYouyjMKaFGYfJofIT3D9hPuL0AMzB/x6n/lRH/KVMinqg0VtEmb3cXVduDcg04DvGNj3e+hIED8EfL8hfQB5ZBynncrfBOCMdqCrv99c4EI1G4B7AzIDOI7uNKXv4a1xzOnXL65b8MI3IJOnQhlmOCNu8B6Tm0rEajZzAzLfQffnNPi0AcwdLExd9f6Yb0BYuuoG8NY4hM5Dl/VGpsLl+VWk2XWV8Hy/0aOUb9csqLSgzGzMEhs+hUmYRfeZPNGhtyFBZA5Pz4bu33QTrbbY2DMfYZsy9syP4n2/QwzeohR+obwVpOEz6qFhEgzXeYYks7RIg5SWtzFssjAMXVXXLHN/HfY8SiPeihK3MN3tWE7ZCLta03XhlhayXa2MXUfS3aQY/d5MUUPrK4VQvYtZc8tPx79QcDKG/O7lH4hBU8NI6tDUH2YXk+YUvFGVVqFDD+hQaWPZVtTtFZ7x5uxPjjfoz0rwFMX3ySQiekQYdh0cE/Egfu+IPr9nBkgXdQ/NDPbNwGZGXNUt2QzwAZ4Z/PfL0+riHknMGur76WUDaCsUE1jj9EtZJCW450b/DTQNzpLYdaY8yzBc7L1BIqWpWNe/XKbD3Kba6lykOxIPDzm2b4yZH1U7r68aqtbxB1HiDmlq1yijHl076HYDrNR4ZFQ6Ze1gXFBCZSLqnmjDNbukaBsuCY+Glt6USmUw81tZ1dXP9jApqcG3o0Cdt4Dmm+01P02y0cnEVJv9LiRT6Al6S+z6lKXXS15Vi5837c7r9xiXWXTVAbkbg8yvs0c/j+jLNN08Zvza5jp/iWrXYJvtGOWbSvC4ZUEqeGyybM5c2y0iZJe02/FYljqGX22usWkgqQ+Z7IB+jeD2TJxZatYOQNXY1voDe1sL9pbbVY0svaR1sWMdWGzPXm4gd2OIGYxk+OEmpzOz4jJPaqi62l6/mGtdwf5AruFk6Qv1hZ2bNAoCbtdHyWAE1Qf4brZNTtyGsrWhssxx6g+3K1oPJHurbXL8Htgi6zhdaWB7PqgnEdPkutMVNy9SjXKRw/gdiFWh5B8hyuuLlPLahvlBgnpv8uZ6aEsk+k3PTN2V/uXWLGJeViHroF0/PW8m4VcFf7Y5w6BJs2uBnbWJ6t1NxkhTwjGHS/Trxrc3CI8IOwqetWU3178nTVZwkTgME+VSboCyZtB0vtlgHxjKtKNA5tdZ76b7eYX1Pticwnr4+r8zdZ3eN5s0jBk5mf1jXz9bcxdz7SnkMaIDIhEdXxjMvnpze3ZQAdu1Ec63evXyNk27LxK7MTcfbG+Ap0jFNpA3Dbu5rjkwPZDOqBzD8PDoB8P0n/H2rj/ZbKs3CIdPxAbwOPwcxvWOw7zGOq9vTlsddLsB1tmu0vlii05gQkBWd9DVytZ8wlQLCnmHs59cj35QXPFhudul3oOb3igaG/10m8vno3DH/8K+uD5OgnDfnEHxaOMmioA+ymI+21va5tHHTRT+/peEBYahBFnIthXd+2Bz3ayHr/87U2/qfbPJaHpGTubYevDd9kbXWVHZRti+JWzNBcxZLovfG6gmPV/SPCq2t14426ht5GD+TcnDAGmhYFgaGPty692jATr6By6/UH/8e3CG8yrgdo+NDjfenxisAKRf5UUYZkx7bf0vNmtENcDBg0UGU3+06f4yKuri/tF8+Fn/HUpLQHO07XaDpYmmXRYuNda/VY833l+XREyNeiKcr5KsXMobpmXb0Plde5oo6fE479DJe5vrAATW7oZu1gTIq1vszB1ZWDtuJfnWzLfbLmIWWvjMmQC3d7fXug20XRflfBNvMOWvKw2T7y0/2WBSZr9hxjIyl9hrdVTmkiJYDLPPwSebVFIH4fAJsxF0v9piP52TlLHXdr/a5JAzL+zoQLS8PyzpCBtW1a6LcpEl+KdQycK/X8MN7llRJRxAXiLuFmfDdClZZ8CtTw4v6FkUKI9xGnxSLigoTw+/E2nHoC9q2y17s90A6ALRNjz47roohc31dyHpKHTBMalIM+zbSsQMFYWG3yhISZu1lw5SyqMWeBg9Lpmjdb/ZpiPpQKQ8Yvcqnc+2OyjOCbxskCSfbrpvDCVld6rdvhRc0YN1b+kAaNYBeBhHgHdynxWsAXJf9zKXEEfJ9XnTHaQv344Kf5EZka+2bD4MQi/tO+VXOLHwGG1vv2GZ7C0p+PsQmm+3EkkZj/JQPtpc56FgpD1j6jWU7zY5ojLKzDym0vS1tT7D2s5CvSQLcf0RpiSE5tXNWUeDbNfBOGsFzdubtHmKVMz2ffviEB79a1xULvWakfvdfg+yjiJf0q7bW1ahNivbosrNurfmq2g9kCWAualgo7nltNaCyB3PAz9RDhHCXQRPDDU52q9vzqQ76HYDrPNVODpfbM0EpqQTswEyYTyHRZM3xhSk0r/bnlVQYY48ZrMT6qebHLwXCc88rI99vr1RbqH8bOPfiOlszmEsMnwxF1L4wSfkjvxTkuZFFDDUABx8sj3b6SMcPhHbQy/CvFCe/AzfGDyvsPbbm9NVG9yuj5Qh/PIPypcsKkLFL4oserwiEtuWcRTyrLBtMts85jramOyHWTsmsDXHOG6sLHOFjkK2mPo23nzCWXBFdA6Z035aL2/PxG/Ydj2c8wbQen9zbT8il1irZ1dkRLhacJgpyZdPyqfwRbleDgi88pil/iHwBxfC0vTGQmZ7lsKCmu0tNutiorQ5uwPUkjRbJTkmLDdvsFD5XVlqDZrpJcGodoLDNYnEfUVF5Hel/wozyzvCXqKm83vyEUv0I+QfKlpFgLd4S/Lzxjj8ZnO2N4RIecRkWcPPNrmwxSQw84IW7dPtLWYxysy2iEUxj605DDajFnIHX4N4z1SpiuBU0Pub7A6VHLshzFlDaH1yitNH/3cjYBftEjlJbhz6Ev270QMNtAalohayfaXhqwRpxpAuPfxmi45yiJLyiNVRDr/cnKNkklf8dvfhsn+YfY6CUDlekwBnRVDv+22v+cf76pN9/cl2bKcvzG4ELUWHczJuxl6YZKTYCZs50AfS3o0n2cZuNMBOto1qpnmbUjxbk6EHbEaM9IKbentSdHHNdbVN1rPCYszXqBoMMZuTYTKG7MI/pBuEfwO1xIw246oHZkQfvkc69abE6OJi7AubkqAFim9oJIFauX9KHSJ7FyHlF5aLj/LLBoPvUsYdBrdrIeSfpWChlEOYB1l0wbXv2JMVx77cpsbG0I7+gWnyMvbxZg1nsRpYp3GjatyMoxGzBrH7mYgQDJcykRe3eoExUV4FckcBO2smvW+2FdcwCMm8HFZ/t1VH0JePsZvT1LHJHj7VfmJlXYNL96wKQ13X/ifbNIkBzOGTRbEGW+h2LSLa7S39i5G3lcmHQe9aqGanQGRdCI0mQfo5zF62KM44yBnpyhuht1WSom6fqaITfRnCz5s6XlGL0MCak6BOk1Xy6OuG7mslcgzAsUtTFZnYrEA3fMwyFf5jvF2JGnQz8lSnOvzLhkK4UpQusBkpzmGeb8++Wqjm8F/jIlKq5emtSdHHNiPLxu4gL2WYuGV8iF05ptkZ9aQtpWTfpOiim5UnDUhSO9kP32Y/mUDJKF+V5rBt8YYgF0ecmwzRpmDOSFim32MiGxOpg2tGhg3CZ0SOV+w3iL4Na0aCOr3Jj+Nt3Z9aCkJBxyZPWjzh5KVNSzXEyDo728xSU3d2Nr/thl49+1u6ZLIWoEY1j7+sh7E9ARpYi2eUGxOFhm/hjHKrEjXo2GeU2xKlC2xOChLCbEyCBtQs+m2VFqzQT1QKnBrVtyUGBR3XqL5JqYYYmWb725KlwbR0frUxOaj4mGdU25Klg4tlRrUt+IzI8dTlED5eT8oW+wUFHWcS81jB836WN8GyJ8Vj91tbvagKQ0/gnGtu8hmium+o7vGG235LGQOVmHNg53P2qVrajInPtCZD56UpaGNT1qm2ZJ3GUj/eXlgyJeqCAIX6fR6H4eX30UMbqNxy7jeVnzUr634kO4vxuFV0SvzimuEEwCA90I7rDY4i1Z/sySfb0VVfmN0IWobjVv2vNtPNmWTkjlTq0wEMyUnJtpq+vte8hWx+ee92GGJjoVZbHApIhoXLVtGLbYrVRzi3RJO9XIpUyQsEZoMC9eGx296GXAvF6FgWz9qib0+YPjzmk1sbWxNsBKIgZJUJcSDJ/v6WbgoeStbHyTeYRUkQX+dDGn9Dl2JXkHf+2FXYfTf/cgk3VAzzBv+GjMETbm1vqiUG+75UlVWOBulLmuCNkzMiGiWnDTbPJFSmvkZ/yJDkPqz2EPmzqfC3NQocAvnJYR/hqOGShRuIbuqlZyTHbhYo86IR7fs72xG7oPOdhdyFRYhtSa4+rvm92y2hZzsN3ZFxQ52nj4tv0B856Ew55lytid29KHipg9bh5jaumaYsPwiT61nZxlJMT5QeMhZhysGq3PiKiuj+Bdt7AlHQMQi1LSHYEmlRH1RKl35EGDbh40oBaMgYMlPQANXUJ7p7PHaThgqNUZyS8ibC/6E8XWxLfdhmxKEhYxVmg1Kwwu87uW1JQkHHIhTeuO0e660v4duagDNIWYStuWxMsjYsFjHw51trnQYTy7i/KegMoLMQ/6CQfra94XIU3sJwRgkud6+0Px7S1Oj4pj9VbddmzWduKlS9fwjLzLny8PsW2rsvxo6Ok2mPv/PRFpqdRTjWBIb6o21sYLKIx76LeY5Ir1Au/t3zpuiSDSDytNkmJRtDukjAOHrM/PunCbNI2IIqN3Oi2ePyD4esPMXrB08bck7DzTg6UMYtx020/UAm2am8tTVtoUGrBLIWpN/FUZ42dmb3syWH09P7PHhcqEDByyd/S+9/aLItwgAYb9e54qGSdi1pz/7IextRAQGza6MC2yJtJvxz+6RoTjCrtktA1g6ud89ebcTaIVC7HrA571O9vU0ZlghwZ/MdEYBhhbnVXpuUoQLG7IWoa4FRuh0L66MaSEYX4e/X8Hr/LTKaGDdkjKJsyWf1UTGKsI2wiSbGePjEsk6+TYl6ABkFQ91rg9IQVIwiXLLo8xaFqHEt810bFOSGjN13bVAM2hjJEpI+4/q37Ru+KaFpSw2D1++tiwGg4RMmxdAe9VZ8Cj/or68PpjzYT01rsJ1K1/Jq5KipH+BSaPccG0spq1oUO0askx3n/nn1HZHGk+iZWmkLm8hMTTS1h9ytiIBrCyklzc0I1cPEgP/ydNdVIAr6CtFyj3yJ/QIvwcytEYxeBNMetc57suB9f+XUYu3IwNUGBra+MnYCZKRr3z2dimimTtOnAGPzURsUYRb8qcwPeX65f1WvrgRDXHNi5PgW4e1J0YU1KYQf5gqaMm4HfgvQJPDHKDlEyWlr2h/AmhYiTYs49Q8bwt9CNB3bPX4KlerAZZicomRDjUDHNi3OUxRvqBkaOIyRqh8XYZYg9vuzH2xHjAmAjIKVRZm2KFADjFWQK2IVvARbclZj6BhFyvzkkJ73dy5nOSZSF93cSL6xeLCNaBL6BrbBu8insmvawJEbUGL/5b5nHbvQO5CmwVeF6rcD/QZoGnjnxortwO/DYhBiE9P+rgDUeX8PfH3RNrmr4s6bLl0hqNAmhcn8L8rm+kIP1PRgll6zIFSy9Hrfgia9QayHaloE/KkSJccNTeK6mKbX8Nq1gTYjQB/VpAjd9NKNLKfWkoyAmxYoju9dpLwnxA3QLPCNRXIdSCxm1CTjnv0EubANdYoJgDyCba6l5mAuX88/DesT9OZSkbK11dDTZUeHtVx8ZPvT8pedo9wy2cpWIUK0o6FaLnyQZjO7EVXQ6Ccb0wFGvhsHt1wVowcmmNzEvVNEiVKagwVzMLlc4b2zSJfIyOvuy9NTyX2LADHK2Ya63Nzrr+d2cdHAw3hmcxQgPi9+f33WaPBQOqvTGjLvzu/gUe9B59fuL931p0jGGcqa7G7I0b/IKA9TUaXwy0L/cEYjd3GOwbl2aFe8O0koNYgfSS4KAhD7j2HcefKY+tkB0bugLx5xkYeXctg8P+QRejl/KP/+kKRJ+J36gP4XfXLxs6L/RemUyopS5L9720RvFmkaB0+oNSYY5PlDc0jwAZn238IAuXA0+iGmH9D3r/H3DW/UE6ZoHT49kNlVHqGfv2v6zMNe0XTVtVTNdIymv39/CPMgiy5YV3/8ftf+jdhtR5vo2fe7CiD6+dW3r96//fndT29fv/3w1/37D7/9+PaX/c+//PjbT2/ev/ru1X/8F278c/o5PHx89d3Rj/Pw24+vHq8RGtGTN89ltJujv/zHf94evy+XHMqnyFKvRXoKk91X/6JUJce/7T8l95E2ZWD8LCdl79hefBq+WL2Qo6l3QHKX6G9Q/1LHJr0/hAkOXg/I96CP8bZsRYNGvrmInPp8+H5EQ9LcHtJ7XsZQNK54coEf46Y4p4drjGLG7z6++r5q7O9+/rl8+M3zOU7y76qnf/j4EZl9UVy+2+2+fPlSmyASbpfnu3eVIYdlBPoRdzTSxuVnSL3kYXQof78GD4TvQx4W18uDjzr9p/3XIH7dGGCaPdCcwMMpCEpKl8O5Q/qPH0sTLudVOS7cgLotvpWXAHj4X/i/O/xSY9O1mH8s9VPBRYrAFP/xrag5V7lZ9eHWckLTtZn6jaOSXy+XNCuof0bjXootOSmyNMbV6z6Xhk17McFLR6XqRl4gJ8yofwzPcfS4x41HNhn31Je+olYjp7WjHCuZWPfwxRNpN+rfIj9XviL3qlT3v1HfOaC/RMcX5RiGB1ysjvpWjHpJ3KiG9gbOzO2WuqG+VS1BB2iAGVNe/x1KkeThy8gJhdmYjtLCn2rO8s+kOGx1wIL62iWNWyoY12gWYgsbw5IHaMp1iNDYWwRP9DfwcB0qZ1x/s6QyziqP8ZURVAPq/GkfPvuY6PAVbIUjn7c3wvel46O/Wa4FHyL/lKCBOgroRt9O2qa/gG/Jmmik9oqtknz5pHwKX5Tr5YDMX7kgRaWHKKB+eE2i57omAP0FQqQI0FsJoUt7DV8h1UQTClbc2Gu1mpD/7/ylzuXFKh9ptUbneDW39cZmho9rQMaN3/eIUY/Qv354s39dl07uD99NDyJVcck6WTD/Cgmah289oVficIRLlKB+hEaVnM7h9mfK12UEts/JlXl79JhGY/jSkFKtiX3gF36c9iMu9EoZLFWS9MPBwZ8HX0fIQSCnfm5UMSAweGOcRpRExYReIqLzNP3UZ1NnLB0brXQqUFHfLOO7/ROaFVXnxodvkZGjuZ9pX/v4Ydg8+z6VPrmvjJX66NtU2qUPZyc+/jqVeukSWWmPvbwtJ/ghPOOk9/C/hxvE3gAxRMMorsO4IUVXLH4OC7+8P+L3rW2ykvPtbW3q294izrf4Eq+xlbn6jMXrn9+/fb97jdfw39bZpOc8ykv3Hd38rgAlpFFxIiiQy6scE15CxVccAhXhc8FMpapzghcq0WDh52jA4/0Y14lFQwSiER2joEmY4aJUn9rm+3hZs/Y/z0LOT8MERfVJfcySiwApVcvxKRrAc96Gw/cDXXkxo+gCTbr4Po4gbCbP2qYbcH1czjHOafCJ83uifc5viQJZPy5XQ8jBMazE8tbSBRZL/xzHt2hOyO7FCBkeAJmPV9TPfrCL0y9oaoqTTBf29xuJ8uP6aADHt0f0WCFRKicFoY/x0mIoCKDKseT4ssnjWPBt5kfxHjc9uUcHmXL4jEw/RFOKW8Wy5hEg8WajLQrD0FV1zTL316D9ikKersuzWv5ai3X7hHPz8v62JTHPuprQ4vtSmhGPXJ0i8Pnez07Xc2tJgJtQd0+Dm0yUXK7so+EIkeIJB5vhYV/v8gsRwxPi6Ct7lxijs6jTtonUQx2nsdw+b7W2IKG6tQXJkNYWJZKKUujaiyix2l746UQAXbNNib9Tdaiki0nUS1h1P6h/ByOEYrCDCK6q3RpcS9tsjFCFaym5ODz5wUu9YObnT6W86N+lgVaP4FOV0VKfiUXRWxiikWp5Q/QJXotCHFaQscevIyTCs/78rGRhjqKyQ3hc3md69J5IypQgCQgycbh8UO2ROEdBlgKZEKHFN5jRSIEQ4Rvoe5Tqvy+N6kfIkVObolTy5lY/cSoAxLCbw72V07HVJFqNJkip0rIglfwFBeRnBe/MZty06pl5GQBwKxlTwZAIlaVYiCDNCk/5W7l/tBgPlRIaMnC5rL0fLFrv6dGsl09a6Djl7FLqoVtKk+x8VUmeNWnyECd6zpFbWlIYjthcMywqFAxESQgTrQooDLVeBU4Iogxh3qKSmhCU6rqWELRuZXEBqQFhE+1J/cqTSyndLubAkyWSKcMwS5+l1CSGQRBLLyRJDZiWsLpu2W4QyDrUhLHhFCgQWDUhcUSHFABRtX/RLEZWI2fQXG8kjbaYAgjtOkvlctk3f2tSKORxaOdNSyBPElgeQbRPZZDHaLIvmTzT6uQki6Zs2rFOURVTeYse22yVkRoMHbJzoDSJaMoZvRclJ0GYFdlmcKtu5xY0rjZVfO5GqQ95pFmT4Dv6h/tyvydrsJasMt9vGfCAGu3Tbo4NiPZnVibStFQxgZNikPg/fALBrHu8o3/YA6ZZpnhIpw/Q4q0DLu2zLryT2CXkpaEHofzo51FA/gvkJtokwelBiEw7zDRywglGIcwMV+YGo8zbga/u6S/ggWGe00pcYLRWXbiGenNz5xoM/N5NbnA2PCAM1q40yqBabijj82xgPp9KXg5wEKrlcTVyTpd+iA1EK/NcIGShHQJFDxXyFMgyp5jIZyBRTbQDtDBu4pSF+BaIMt+zWgPoPAJqmVOWXi95Pbh1fhPYAhiw6Z0SHp4aBhJnhs8qPED01T8xPXwCI0tF9UYeyHwphKGauE9ZElWIZuwcae8fcIdR9AQL6fQhVHT2k+vRD4preQ69OUMdR+N/gQs8eJiTT+8me6cKiBj7sSIIE9URgPrwYs534ipBy8PyFDB+YJaNnKajVNs4X9I8KmDCrhlua0gEKkddQoRSUwTWDCYYARvCOKd2BbwV2H3W15FrJS4QSksTJT0eq3+gTKxDVAJFEMELv541lT8CrYP0yQJs3lMpg4GtZnKXFJF5GT4BM4l5VqvxgVVdp64TtLI6xIHcMp364SXxz1GgPMZp8KmqZbQ2O3kNc8FVtbLw79cQaF5AZSORMphqOhXGqEXHIM1sjtsanEri6C9X9GA+51+cITgLHC0/KziVoUqtbv+xLEbarQG2JmfwBmRgCS0lMRCazRyyCKrzUer20Wv5AXU/Rn6r8oLQY1PXsF3hEGbYpZIGag4a7eoGbQlZKjRugMtCFPKyYIPg7VS77P4GgnuKPgh+4o16tThHS3TC9IaFTIH6ySKud+AI0pz9WqXDJyCStaudlrXUlS9ZVISKXxRZ9Hgt+E6OTLPpVlgFmlSPcwBb5x9lIZk6iHpuRWvbP8MgH6ENgnuimO5jlvqHwM8LtrdgZAXEI1s/dbFhppeka+eaRLO6qd7ZFBaIVhoWbqbWcoYZlBmZAQ3GTNxW5ATRXMMC2tSa2jDNxcQMSqx9eRStfEcBOSM3QbpcS7lduyGP0ylOH30AWZqdXP+oJMI5ZW1qrYsBxFe0aITF7KNNsXPfKAzOIHu5FCm+8bOA0mmHJIzs9MsbwKii98lBI190Y6aqd6DUtcDLCgpVtfT6maiaGTiIyRCdEr+4ZvjgFa5EWnKon+3JM0EZWDgIyXAtopgkjIv36ZpW++ofEFIgEorPoGpKZT1pEExsVVoYSNUTXSVnKfq2iGC11i+DJqTgAKfGqBTFMVYLR/jCZXF4LWIAyACymitC4qNNSaiOgurj9OIK61MEw5gWTzgiBEfaoyuO9xzmOUwPJpfYVuk5APTKoxsKrn9U3hQARRGMjrjuL6QaVDOBgGuLmnJlNXCE67jpEOVB+jnMYOL9EdJAg/KAMEDTlYuA+CcAfDda4riAIAGhwVPX1uksIIq8MrZGNYHBrU2lrMWIL9L8W8oX9LWJVcnropLVZPjRAJwELCmV1T3qq0b71zoJkivf4i6acqNHio9UwynXLkePFr5mQ+Gf3U1QE5eT6QqQeTJllyx7YYSvKAIQs09RHOOwmF6dZwBBvX4FgBT+FQCSeCOIYchCfAe1QloTpquTUrAkOf7o4/sQLlxbOOMUufEN177q8iGBHzyF3IELnbgAzLKmLuf+c5sESa+rivPyCzakJYirfWcFufaxbNxLFnLOGNiJ8yKvVvVvcY1/johJKhefP4gYkK0ekNtLBaL0BdQlYRfqTSy0JeEWiMSecdmmTrrE4MlSsmVyze52aTbHkkyHRLt3tIbZPe8wy0S8LEToBwFHRkqHfrm0ynS90TyV8hEvnSys1k1Q3ycLvpybM4Tg6YLvwlBOZYjy/MK3SklINeUEw1xBvVuMyGOUHMrsS3E89QURYlSCx0/IbZEttjA5RYkgKraLwiZJQDYaopXjdAEYUlzzrC4VTl/YJYIvFov9l+WDb49MtRomRqSz2glAitsZ1WTqg5FkxZRj/7JLLvO/KCCaanw5EJm9H5fHZYtwjwwCimi5TAVG7Io+DV4C0b53o0gukdhz7OyMUQTo1Hl5o66SpdflKQo9SmXmb5QcBceZTmqHEKVuKCcwxvcINjPG6hYHCOc6QlqQaBzzbCQOiQgJSA7Gl3d8jCmwfgkv8PCxae7ZIEWJz3vS6nzEmun7GF6e6cwS0nJQ89YoIOSRHRBbWBDhko2sqiDnC/L2zfpg+Sv7AiQ7IRZEOXoZCbDHF6vvyP3q5SW1u8fr8Rhmze0s5NdKf2eGRBUe6uVdFaCEySU/9e2x5I9iDMosnX2JlPxcoWZptcVEWZAWT1F22F/8DJl7uS91LP1LczEeecZLqvqaRbrxrzl54xuB+mIgIP+JaJ3TwzUOP7767uOr71Ef/VsYFN/9/HP58Jvnc5zk31VP//Dx48dXT0Vx+W63+/LlywPR+kOQnnd5vntHXnoIcSvgN795vEYofE3Kz9DwSx5Gh/L3a/BA+D7kYXG9PDS15N+Xv/678RdSCPv1Jdj/5d3r9PyYPpyCoCRxOZw7NP/48WPyzTfflyMLLiGYf3Mp8wII54f/hf+7wy99v+vJ98dSmRVOpAFM8R/f/tfHV1l4Tj+HB/To6Md5eHvpzXM5fOXoL//xn7fH78t4p3m6CZW+LpfeKhrvUNv/0xXPRP9HteKqrVaykK0W5bUH/6NTcZ3+dzLUj6/8a5GewmT3kMfBvszU3j0EWVAtWuIfN+R8r0H9/T11/p+vvn31/u3P7356+/rth7/u33/47ce3v+zf/fjz+1ffvfr+T0gbHz9+8znMMKs/fHylPagfX6EnYRKkeAURPfrtw58V9+OrPyGeiGnFE72CNyD/QBP7NWmNUakxfUTmEqKR9H2A/kVUarKvSi7oBfR/3x/T+BBmN1akmTvv1G9GqLmb95obqfHr+/DZR8N6GaqgV5D5hBnChdqMqBw/xEd9yielTRL9TnLo3cDQxNdgDAJqsXoZfFr1zyXQb3YVsrDVJsAi1EXF4WlTy1vLEIJesRmez6C+sQQW/YLAMpj0StbCMxjc4yKFyaBGpXQWlDNJ4LxuJR3hebQrk0mi3itMBc+FWoAHnk2rnIwEz9guNyKFAZ6MUyp+SODUL4Mhg0m3QoUE+rcqCVLIM5z3l8GXdsxcWpRClqFlDO+0s95SohVJMVZzzZyEFk6i51shcTlKKaNPCUHbGeEm1El4KIFH664xOXZZg/7qX/gIf78j87T2o2o/6p1fPKFfUcBRutnrIUq/q2etu3o2R2g1s9nyt2/kzEw/hGe89xRKmJtWSxMLJqckxbE5KYneaFYXbooftga7F2gzeCqQOsF5PCEGMdnHgSYdJWhYRnPTXIZubsRhkUdEK2n6CRb2rx/e7F/Xa/nw6q4p7wO/8OP0BM2AbB4RY8nkEgc2lmZzR5KlD+jLwh8lUSHJ7KvgqRxKqoM9+3piANzcM6wglVfnPh331WnRfeeYhQQ+5V79/in0D9UhMFivR4Soa24gKvCOdchCgqbK2dpaljbOTIKtkQWHtUSb4CZBNnKj/TqSjfLilIs3wG1CwtUi3OqFn8PCL4sC3THMxb2/4hDh7bv/3opnTbTg1vtYagq1IXrf4uwVynsjb5PErdH3R77q5nnNfE01mGGO2cfhvHPQ5EgZyxLXhk5kKbInGcie5pBR+sKSP/fbq5XMtLSpSZ4TYxP3zRjv0DN8SG0HSqbVooZgT+BiMpJpjU+qATkxODUstUf2dDxwNXR3QcBacWHDUWEAaJFVccBduZ2zubQvt1I8+Tp0Ky+U36J7WaqL2oEnDZbFSmaBLjUYntRa2X6om4vM34BjScwwCmLMmOZu1X5utxTUfSaiaLt57jIhdzmBmSSvFxz/wzCSJcdM2GPfauliqRcN4ojPewrFAWQte0nrN+duKjlxpYpy7L+R4jbLamW9OXwEhOlGUBRZtR8Cia1FUhRdlFyui3ryHLaGoHCL4mVJXMcUslFbNEXx+dnpem5ti4AA7BAV1uATvgUlPOzr42JgauwTlh0vCE3fOoa5IMyjagFP3PoEwSwdEFybJpQHA4TXIimIDhAVhK6iFNTEUghMN6cCCK1DVABhBOxMCUQKVWGMMENlGx/EWBnVhgIKLIUffyCdW5/wWpODWtp+OF0tYd1hbbK11y6k4ZpIreY2URE7aFb38uIg6BvHIN5Ib3r5tK1Ukb7aqKEKyNpEAVtKBsQb6Tt3WHLX7n26K+FdJsYIdYfqvuCqM/SoihhCRepCSovv/eYWFlioQ/pb775tHYt0j0odVefoUYVvOXCoQ/p37s5kZXb/5I9vN8vr0ucoyFLxEOcmQ9lPulS5jSLIAkhUFTluOKS6FSSiG0X+jlNatYIPsmSQ0Pp0t+behmvQEWMHmlJmU+4XQo2l36mK9DaEFzQ0uzZHlMLqUiY08gSrDvzv0wqK6O39FIXgSNIT40aRf1P0rD8/K1mYhwUuCSa2dNCDR6PNDTQOxVb/e9gqctxwyqGlVcoZClefriBA8R0dKj7xfZ2SDjgwIUg1B4VkcUOCo5DmH2klDQ5i+9pVneEwU8IQhbZis/O+m6MRF4rmAMFV5ESjOUBEN4rcoOCHW3FnIb4BR/MY8LtvQrOvKq/fz5/ukJOAuAKOaDdRSm13iW9D27jt7zDZJVeVQkyScAVWPEtqKG5tekSRG6IHY7mxUTUU72xP5PTXkkw88BVRAgFX9RUxrI4g9Vpjh/TdU8hG9Pf65/dv3y/N/XrNnTr7lpxk4W+y4JxHeXl6N4o5g81S5B2WYfe2vllhQJU/TipJVedsYPG1iHLDK77i2gdF+MwXE1CwdSkK6u0U8EWZozqrCG61+5GhfWn/Yx1OaMfeD7gmnZ/n0TEKfO41+uoeyDovi06V42BCmQQgA+MoWS6Q+zA5RH5SX5EkqL4uMV5AV77ZUB/KlXkKNASBdBtmfI6lC+NGiA+IQDjet+xFoTe1zAT3QDWAsmh0opcEAgGSsR/UGO4TFriyGQCMGyFOIHHEOTHu4ajp8OrDL64QXuRGSOgkVo2TM84edQo84XUlYBVP3wjxm//+nAafALB0aAl1BHEsN0IiHQEAR01n1ZOAZT2ypQEU/wqG0Ew+PPP74FLOXTOFb5ES2MQidlwWJIj4Am86rDbJe+dH8sXK4k21qJWAO0XmI1RLO0XmR/F+vjONfM1UQmGSQpCGz8iDhMnsYTQWONUVQYspjZlRGIauqmuWub8u8QCzhta+hbSRn/twQdnwu7ol6zIMLcq3u5M6Eu0mYbB7mFlxW9QVwp2ri3HLSecvScCqmvK95RzA4BN3cSKH2GdcSyXLG0lSs1ShUY/RUsUvz51ZsEkhb8w9+1xjLr56tbnjlrNNEI1dhw5HTIy/PyKyIhkNXTQ9apyYwOAII6nqEIABGtDjxMWft9PFsyhRh6Yfcs+uqFYIFQ4McfqlLGIQiGxM38DQyMmJZxcUOpgL8AZfkPhmaVTsXy58AXFT+lwkJl4cVY9J0b67B2YM7ZBcFKz2bu9EGt41yqrH0g713YAXZwQzIYGyNOQWlEIRiq0n22JJZxdtizWCmjGbbqrEAxn0rer84hMVTGps6O8orGDsoKELbwQ09AKTiWndr4JeWZLEJsOCT1l6veTVDSYwRtwhyTP6s2izw2Q3xvJeWn3084h3iaafn4tJgTuCkuquoQ3SgUpqSvAoE2xFHg4vuGG2NXtHC6RdZAi1cDGkDN7kNCbUh2DWQL/5Ed6YmSWDNHWq5qAtn73N7tovbhdvQvWH1lWedVACbzU3JrsxjkCmMiQuZWIyKxLo9ISqM/geMNdKd7V8cl8rlNXXt79KMQ1CfNfnAmQKFVF866SUadYQf5sV1GylJi4Pfo8JrPaljK0Du4EcQytNwHuNHmqwKW2n+0iHXXMB76QrQK+43Ms3l9cYKmUhcxj3TL1AG7y/tWDvRjmCmAOdOrRdzMtzRxuhXVUOYyzhVwWTBjcPGuJdixmIZVT0pMQhUwKAhiT0a+jhB8gRgUaZQ7YQeG+dNK+7LqmGYaJcyg1LyIyRDl0J1j7EvaOwvJdWIz9XvqZJWF1IDqPSHlFwlfbo938H62I9ulLMY0YWUH/Y1xO065hrlzt6j+iAAETHueuhWBVZUYO3horwrs0Bpu0rgnKMuA8b1mwbovBDNwU53BDdNCJ4RxuYyQa6lnIMwwO+pBK2jzVkpbV9w2H45J5Dcxx+DuN6jR9Gpx2S4PrsUN8NeIF0qQ5VGQ5hQghI19DVDrR/mGqJO3qKs59cj35QXPGxNiWOHjM/K4cKGOseJS9nOXqU3fhfYBerx9kQhOBmxSPxDYpkmcuiLPDLyDwy36Dcq6clYYGFUIIshNuS7REF71A9+v3fwfpNj66UiHhGFtD4eEAbflScFQduZOy3OnSHnrMyKE81UBG+VDuPCvgVu9nGaXPeiEdS8jBA4s7e18yp7Jq67I7QMBr9g7ReXjNYw33NiynVoTW6lNxzGFpzAz0oL8IwA9ul6lOVZko1g8EDcLOpCUvtGaPiSOkJDfHP+h0kIkwltZG8YGWiieDDlcaaZfmo8f4DHbE0aopwFkeysPQxTAu1Wd/L4aaJkh6PMG6W0AI3dUJ2d6MOYgiEnIyu2cEL2Q0rDUAbale/97TFwgfd9b7Rg2/jhvSuywWmoSUkrnURg/nTkqyEFMG+gvnyAyEtszpacUnjKACa0Q3ISlFjh8PwCagpdCnL6HVz0gD2wS5lKUPFvECcAwi85UObvERl7rpcwO3BP4VKFv79GkrYcaFKMWAJLZKMWSRdEsiZY4vs4QU9iwLlMU6DT8oFBdjpsmvX+SUaYw3eRjL9z27ACBi+xKFt1+WyimmtIs0o67uOBkWaYW+UR+cLVDWWIV3lkEXSrKbDifKoxXwLmoaeE3XpynEqHRaUR7AepkNa3mA2JxT84EbIS+0FQ2lgnWi3ZwVX9GBZrX+A5hkw30K3xvuVzwrW2IJL1RfpHOn3+iy1K/Rl2FHZgxsToSzTiBgEk9FLSso4je0Ywa+yL5OvheJevQXNgFuJiYCHNyiEwbsJhQftGVj/oNCWMhIyygU6FtL0Bt07WNvrjv0hC3ElCLBt8YYcuI00lHcdHiC20FCUYt0U5KCWfKN6CI/+NS4qN3vNyJ1Oa8gzyhm6feAXLKjNA7dccbNWaO9C6xFQAcRNFZLyg2lav3/+bx74iXKI8otfBE9AtQ/aJMGNt0N9N+AFU+2gQxXaEKYkuKclkOndOSya7CSwUJFOG942qGxGHsNZC5W8lIF1kYCgQ+4YC/jRaaGMcOPWiJmAd/9FRnpPh1D4wSfkmvxTkuZFFABVLhuQhbegPofhk3vuBhdhXihPfoZv+4RRaZsiuDbbxHd9TkChl39QvmRRESp+UWTR4xWxkSvHKEsQgdqs5BwpHG0U2IODneaGdoTjhgUV03cUIyPBarwZ7pxrVUTnEDTlpEUQ3phvtHc9PjBm0KIJbgEj2O/Z9tkVGSKufRpmSvLlk/IpfFGul4OPnN1jlvqHwGe8+nJesyys4O2FhSvbW3A2xsQN3PoANbFRiyX5GlDV/Fk4rWqvNVOml+4atU7guybROj6lYrRqC1U8Wd5ZxZvUvNb0JUt0cEc/UiEpArz5WoKDMckhXXALHLKgPAKzryFpKctVTEKBLlPRyMMvUTHKBbc0RTEF6O7PZoB37Nxfg3gPVgGIaEJBNKUYfoV1N2QDYg4tsqc4ffRXE6LLDVoWklmGqKN/JaXT0xqGyvWOVq40qBV8czyQwQ/oynCMQy6UR5COcUgd3DEyybS1m51HrAsvTkRBqByvSYDzFThuFe2Xha9I7muScDbVB7sb4bZY7/MygNkQkwyLbEfcCHgG0cHtEBlwxXfslNtUBRu1KcsCjbFHWBBmesEGAI+yS1e0g0ipH4RhitYEogwG4BgFYrc+vEMqAd6NKGQzgznAQTPzDJSjnQYUZpcukC2CImwRXXPAIIFQubMofg15+DVnu019VsWYkoQgtpRzh4nvWhzuNR/AIiuHMA+y6ILri8Gm6o1Rl6PTMW6jfwCbJowxkGY+i0WFnBSNqhN4asTbqve8G8Yvwi8+0LJwRUzWpaNEvRWTHYUZiLH06MpYdZkUBHQxqaYtq1v3ZQDstDS1SOmvU+1wz6KVwaV7lgKoamWfrBzDGLAZPlklihAP9q5FtPwOieHlqLBZbxjUrkVVeKpDVmXQiBSkn8PsRQbccSaC6MtbYWGLDtT65S8rMMQYfgZN8a8hNmRFEdZpn0oefQW8e5HgHBCHQ1uVF5AG+EYfDHPhP8byEDfUBfFWJwr8C2AAVELtEhZEeQ7zHL79W1RF8V3jIlKqZVJolH3agliBb+UtMXLfu0vDphzT7IwsHTLp9oayS10YbxqQxGeyjyrHTie4AOGvtrjlwh8yAY9opIQIU2wEJSiTpzETYMgduoIYJcADQoZXhiWga5MVRFinjvhxDHtHXwmUQh0Gb1o84aQQqaiHPKCib7AFhG70Lb49gkidfciLx2qANVVxfOXZfHiADVnwGQEwVBp94BmBLMQNdbgZASzULmFRlGQIBkbYEBVGB1uGq0LHXVVrelSChUmhLmVUkoJ6yANktgWLtaEJHT8D46TSB4uYYbF26EJEzLDwgJDh0PYQPl5Pigy7pFBfNcWPr9jtMDOSSLgn5Q330HPKqsjoBB/RRiZkEdd9w3WPl+H3kDuElRhzzMTzVKlagsswmm4NgC5HUxDwRGWqLaAmL1Ti8IPxlCiAwzKVfh6H4WWdHtKwkibHHjbrck6W/eKMBoDE/uiU+MU1wwk3QXpYfmiEkhRfk9wTkoCJ/T2wuxFuAIn9fapwif0sMqw86nPflDtc/EhgG7y+LbVFWXyB5pZWDByWtOFSmAAsLbWOUcuB3ecgOonPXi5FquSFX8gwiz55ONuAPMkzNAqI5ZG26PBg++TBzggAr+o0gCkcoDAjBCQl1Ye8GXCIvM9nzSEgSoL4Kj78+4AXZFaQdj7ftZhD5/lyCQGLkd3g3SgD+B/oNfkWTLj1+CqDEQ1tlzTBC9JnxDRKThLUO8lKSg9Z8qpgEiTtnG3kC6dR3mbiOPjwk8O+vOz4koUAcUO9LIlw7mYZgS1d0OgL2hq7IOIdJi7v9CDMIHH36YrvW0GigzkR15ER0Hj7dNccbrkOs1GPsVXrOcJlT0vNtA6vtekKNmBJMEyuZwVmQaAHtUcZAmw5DJVbGVERiZeU7QGmUAcADQsSJrUM9SyldKRHPxCOaW4AaZQB9sKR22/qLQhHMje0VNJAcEvOIIHtEG+XNrQPAINLowwFVgJKKHh9JwKLlEIdAjTe1Ooebqqvw4EWYIYThDA1CmDkbbIQMDF5aO02NCHGLVBoAKCyEP+gkH4APxyMkgcebpXgIlyRdnzIramvGTRXtdeaNQLRALqidwjLDJvykB1EK/dh7uh8QHYtO0QhGpsFPNSWa00UZhuGBT7cXsw5In1BufjCmRR05AMWMnS+gr0DZ4HUZOPoMfPF0+1YJGix+j3uyjb7C/7hkJVnoPzgCdBlDDcy6IyAtmOAFqh6mH+fiXa1ZUI0Y5We0iK5ifTyNjYwVwLpPHp6EweHD1cqeAL+t1T8oEsb4oDwugZ/xYPZ8ourBlZF6AAphhDbtalublOpmdCK7CyheF1Y9ZeAzKuvwllxjUg7RHTXIyzqdypqcjBCAhQ04RGAAKuLrfaQgrEiLNX/jKw+RSmcXfSpLpBnDN7fr+FVfMOBBvFGGQAmpAfoUwWABxN60CDyhCBsK6Fy0PYYAIBGpi4BKaEKAO+SRZ9lAKzpwvVxCSBvlGH6uASI7J5fJGR6xlXUOO9L7SlkQEpUKwOCwyegKmJ7iXqJL5PWKKE+9jr8Gm8n47T8FzkS5QeB4GW1pWTVSeAdIy/u7iSe79qBy5PcyqhdiI04JtXy7cP1z7DiaghKyQ8McI+mILbLk9D6AgVZRVG277zEfoGXCkRmm5wlv7sj0XlPFmDF1ViLtCODUZvw5mb7yzOxRzu4cGII0V6dikshLO6FJMATAnYqd+CfX8QrjXTRDemKQMwRIAkIu2S5AfphrqBpEhy0FkFuUI9RcoiSE7TWBmT5AaZpEaf+ARBbiyJ/BPP4KVSq40BhcooSQOXRafNDfYpiQPU15ABiLT8uwizxi3B/9gMZLnnAAAB0WYhCBtiGMATIa/GyD14CyE49Rh0AbuYnh/S8FywNNQa3S11khAGOHdoUuWEBbNt1UfHt7Pfq1vqBEvsvYudRurA6JPmBVUVC4WDdCPKD6lTihYPWJysIEGTy1gW3YPZGBVZfIEdq7wouGHcBUklzA838Lwq47fWI8jvi9JoFoZKlV7Fj0z0H3KPKDw+TVaLkCBg8d2nyr2q0KwOAgetT5YbXTdkCWhiqUY4Q5wcbx6LFIXsAbwSFQAGP+h2Sok3bpJed/QS5AUAjnGAADRpcw3NsZK8WnpacYxxExZECvd5yuuzoZGUrAtk6vybKjlIu8kJtGCCKOxpV2WpYePM4PfryE2BtlLdvjxOXrRSOVF5GdyKa6ETU06TDzrEBd4eieVBL8Mtw52WGfiJ2qJ9RhjYr2QZb8xLZA0JDFNAJnVFV4DN9EGMpoYYH1Vnt1yzvt28089Lonyl/oD3qr25EzCdzkHb/FgbFrv5mN07WvzCfV6+pVp9MEM1C/3BGY31xjpeR7nzYYVCFWe/84mn06zw6X+IoQMayRza211XdfND0B7UqNF3Wr9k9vhThvjlPC8ml2dusSkWXFz6XfU8yjzyTw+P1z+/fvt+9xiP223ovVAKbKilelqbCcxw9kv1m2Y0RISbIhM/QjEhR76coO+wvfoZGprIk9XEFFlIkyVHnQyHfPvYfc/wL+mdPotWVGO3KOsL7MklPqkGQ+svgdjdZr6vyc/XRr3LatT73Y30r7eqsT1l6veS4nNBnFAStzf3RzyPpjd0qnrSegPUFCPVReSkdJ/PRB+i/UbzHXpsodT1OaCwKnyPUZxPUeRt1RGEYuqquWeb+un5HRn9PMzxFLrI0vpdZI/Z4aTjzi/QezOsTayszbt3/sDrv8Os5PZBD21Geo/4WJSdIEBIFkq2r1jG8FfwsqRC3AqP+4XeZTKukcskMuume8tlFEmcpZLw4+3JnEHF48oOX/RNZA1mDFZl97f38STrHcrF3X63jSJ7vrRByd05Urj0+EMakSnWYB1l0QSMzvpzq4hfB033QnPwi/OK/3CHiD3FSfvoF33ZW3ssn39WcpI8Jk2LeKQxsQ0DBYJLHpKLbypPMumbHCo5YxrLRxAET+XzK3VH5wsCu5jAZZ+Tnytc0CVfwAXT+B8Q1Oq7v/+LwcxjXM8TVuaPx/Hr0gwLRTk51iSbcBqsjqbPngiy8yzy1x1+5bTbfCUhehGEGPG9kAoCGhPQIuj7NxrbwFQljAytrMiij4RGRWb/Rbwjuw5rcaaGUlNZ3/m0I9zSBCsIlzaNnBYfnZAtgdTDICJsh4V4DYhbiDYB7+J888JNVJkPdjJE1VjhuGRIrLv0P7iZcuz1Lp6Kc8SUgOMq4k0F361jIZU4pnLG2tPgW6TuNKO1sdCX58kn5FL4o18vBL0LlMUv9Q+DLX/5dhOqaRHfBVLEvAgVn2WBE60GQsd46yZDc6rTejuc68XunAuKKqyjyp2itopcr7YnfacaFb4tvHiqU5Y+zH2Tpj+ExSqJy87zJlXv/0/71Lz++Qf/5+d0v//LmXz7s/+mvH97sf/vw9qe3H96+eV9my33242t5Mn0qeW2aRU399Q8ffvjpl7/s3/365j36nR/mm3/F//0/v7357U0H43huzQLir3/5tUt1iUrf/Pv7d/t//uU9s3B/+eHDm3/74a/7H969Y/3k3U8/fPjzL7/+vP/nNz/8+ObXDtb/5+/XtPh/6yVF5Sn0D/gMC3nMrJMPP7z+/0s9jLNopdS37nwnh6J4uM0wGpxy5uPy4a/v3rxfzKsudbKMY2kKr9+9Zn3/t/dv9v/+A/rkl3/589u/dNBpi3giU/rpLeprb3/5l/0///B+//Of//LT239CP/7Ljz9hsdlIERi//VrRGVPZcJBs6lNR1VUt0v25e5Vk8YTTb1le7U89qC/157x0SoOdsyJN418ulRrwL29x4vDt6cM1eCjzibNSEWn5cPSdh1OYhBkKkH72LyXntvJQONf3KSzc8Q2YiNQM//qthwD3yOTgZ4euQ9PcFXg/P49w/9//W3Pk8/+Cpi7lFaF+HN9B9Q378LnI/HsCuIQHPymioIOhyoZfrxGycB9mWYqDzPVh4DfO0Vef5A62+OfR1xXYl7lc+3KrpMO9KoLHBODsfwrxmt5DeYrpFLR7Wh/G1LtjPkHJi8MfWB3DFIPLZQkcfJ5jzFEQSMzeAkxDtdHu+55D+Td/sIO5goIk4+HTzdCtKf9WPbubfuRhWqSjUW+j/NKfN62gHTg0fnbukB8AiXLaYb+S7E9RXjSkGwTHJFUer1FcRIlCO1eyiEDOTSEu0oVf/Rv66ppc8/CgXHwc/Rb9hUomEmV6bXJSjlEYH5QyBPdjNCT1l2IWEUOhbjCYoO9ubTvf4qiBH8iRlYfoEKIfDZ00/KF4ICl0B6z0wwP+4uGUXB9aNvfoV8fsWpbRIth7m7z0gE3nIS2ewiyOqEVD/8eI7m9EswSoZ8On1FYV81HiMDkVT39QRYx24KboMzU+JzVoXOkdCgdGS7pU+32gTvU/Fn1fi+azmmrxgdFm8Nu1vRxj/0SrkQ9vJvG3ioK+xIGbkn15VvLwdA6TYvVBa4GuOpqKD79vXY2HjOLu8vfmA7ZiZUvJBVEWXGM0Zw4vYXIIE5z21ZKbeZFpOxIlyBgPcfTIu0Qk4i8BxLj53gVN8329CVj+9s33f3o+x/hVZOcICl76f1DLjxGVFNeYxhsFH/6suB9f/YkQqL7/2KxrX4OHc3q4ot6dh8X18vC63AN9R157h3T8TyXwfzf+Qs5MvL4E+7+8Q289pljEkhsiegmz4uV9gP7FC/QVk7Yn+P6CaJVKeF+Elz8iSTq/ryRdtYb2PiyKcqGRT6ydPIBAipeI8BpUGAFsol//x78W6Smk3XE6ePUhj8u1yWK8dFiv1stDkAXVvSL4xxJlNZFruhl6VO/DHKhusR4FpuvirGDJ/sUPPu2/BvHr5qaUNFu5SbqFl/wLznZ7EFMsjeY1x1lMODkD30SKwoS8WWSTzuYJmk1FPkffBM3NOeD0JdBtVdWDIxsm+DwWjtgQ8DJfkuCHV0yZ7AFuNYQqNNYIvv3KhSpwquU5Wfi2wgkUvERprpklq6rxc7RI69W3r96//RnnSbz98Nf9+w+//fj2l/27X3959+ZXnPn06rtX//XxFc33fnz13Uf0t4+In/85RKFOGnz6Vz+LsNXn+PF3+D/4Bfw/KI68ROitw6ef0oAswVd/+K7+YSz5q/77t/UPuDbSL5chARR0Xp/3tln//g/yH/Thqx/rDcZFmFkZNcjEhawx/wO1C6GGMyZy1Az/gdqhsQ9EEdvHt81IVxoAlu523RgasaqYYB8++zh3Gxse+iTNolOU+HHzTfm0GsHRA+3bkkxRZnd/p2ieYTqGrpnqP75dhKFT/ajlZhdD0BzLMXXPcBYCoFVtEcGhq45nGZrmWouB3Cq3CCnCtU3DsdSlLVHntYrwdjTH8DzPWcqbVkNFSAe24bqm7S62ht7RVBEMiuV4umuYi7tEfTxVOYZo3owr0Yug0AxH0wxL85baY+ewqlCP0AxPt1xL0xYiwAcrOhchCpmEqrqmibqmtxRF77CokFnahup65mJFjJxXFcFiWhZSiW7rnFjqI6tixqmptmOiNjEWomid4hThj5g7rmqZS21ieIhRyCw8TfVs3XCWwqCcHRRrDs+1Dc/RF7us5gChoMNUdU1zTHch984hQjEF2LpjqI7qLR03hod7RJ224xmu4S31FPTzd2JYVDSKaaZuLh1AyC0qh8g/4bXqKBCKLBRN13QX9dalKNon80TbxNOR9148jLWO5wl5Cd1FreAg+1zKf+Iw3AWZSXqIAqGgz9YtVXOdpSNJ73K7fTlH34s0kaeiUMO2FjuQCgY+n9GaEfGaiaFbKPTTljrzRhe4rI0IBDwD0VG8t1wNg7NRYmGfrnsqGtqXju2daSlfIyArsDXbdZeaZFUYSyzGs0w0lKv20va/JtHzrSqLSDTh2kjx5uK5D9Z72QMEFI8b3TZdw17a6GUxOMKfeAMRFA5qeTTrGCqg3B6d7AA136/+hTOCMixXt12TVf5q4a22+ic/OcTkHiIOs1c9yzVch1n5PeZRglPLA8Q+4DE8C/V11UbhvDB7vmDeVE3bM3mkj4ju0/QTp+hoZmdaSPGLef/64c3+dXq+pAlOU+E0d8tAwYFtM4dGLb2TQ6DE6jLeANG1LdXyVGaPN8qfR/emigc8TefhXt8DINbtdN3SVYPL7AcA+KxPN2wPjbU8BtAgwFlDgl1QM13PcbUFQ34NpAp+cIbVPvDjGC977espHbdh2qbnaLpjMY+ErHB4WgnNYHQ0fzDRfzjh+Md9tU27r2u7c1qshtc9bNNe7itvUEiRWHJmmheGiYI0VTOdxQ2E/v+h2s8vz9cv5226rqWqlskeJHDcWlP+qjS/ctmNrpqobzu2OQxmJSLlak9X90zTdJ3hxIMPKeWakzwLmttbyIzxyNkbPUvVUaxGWQ8GA4tvx+qD5fKrho3GONM0bHlYBXSpqcipOToCKB0e3/isqo6l2wYlQOHDx3JdDflZKX/ms1DLsCzXVW0oD7UYNZ9PRyGA4yDvOhxagGE/Xo9HNBTWZcpJIWAF54WFhUL+yNfb0KDkoSAGzI2xSkB+FVG+jl2a5aLh4j7Qya/nKimIYwJrm4bhGNYwQloMf+ySt2qyyTvTQlGT5+kAQ/EMvn1zHTFHwGCppqMbznA6AI6ylW/HMaqZjqlrlMkCOMwouVw5TVKzDNeyUOgO0KVm2xyH1NFXvs6vebZpaRaagskH6men65l7wcIwNdP20OxsBY2WpXLCw76+zpZnrqTqCKvqDvd9YODikLZjp1wxGNKp5ak2ZckbHGVjpjxAPeThNRuNsfJx1s6Jc36gOqrlWbassegGlHc5AYWGaA5ryXLzbbtM+YzS8AxPV2U5+BbAm0PiwqlrqopmMZQ0FEikEYjv1FFXRx19BaQCoyZSqGajUdOW6zSj2jp5QDqe4zqatYZ5dochru6OM8dQaE9Z5hZH21yHW0Guf+dD6qCeZFiuKmN4H0O6z4sDr5NybNtyqAmSgHirmKTRLN/6GppYe55FyROTh7TSLN9ExHRVW0f/kYC3urG3sgPyW7mHwTmaorHKcTSdsnEtCSsiF4R5vvfLhXzOhTcVp5RqlK0nMNCVObQVzLk1pBko7JcSrVCh9vTLA9p0XdvSNEfGINa6QBDbxTkKslRgeNBUw3UN6uY7ONYgCzhXNNFMytPkzPh7GDMU+Kd8A5hpaK7tOZaMmVQPJTFVBWcI8m0qajjXC80CNIC1ypk7Lqt7rKt/eBeHXd228baLfLj43ydOoK6uWq5nSZlM92A+XouC0z0pumfg/gSxMzgHMzzrz89KFuZhoRzCI/e+s+qhIcCTMtHqIY5DvmVJNLG2dDTNsqQEhD2QpduvjhDwHntzTQ31fxkxFhUs/8K0gnCqpm7SEjLkgOVUqenqhu1QTrGBoxzUnufBizyV7qE4e4VOJeT8bc1zVNexZExf+l41TYs4xSpVwhBR5ZxwobmhZeuuYUiOADFkHFXxNb+hWqblUM5ngGOsoio+XRqqaTuaqslYFxiO/by+X9dUnHGzkoMS2ZewTBt5U0fKNgr1zvEd+ldkrFJQsKLjTBYpq4Lti4BxbF3uUnBOpkzN9BwEU+YIUF1YXOHk7FK2pRrYQ0nA2b0Evlq7IA9RAMipWEczUWhlQGTdNYBf//z+7fvda5yV8La6jCQ45xFOVKhKfHK5VRWBhd6oGoVaoeDtVshSbdWgJJaCQi2+7kuuz7wey7Y8x3QMypljCSrFBeh4YOIJCpqigkb/xGk2G9PpAZ8z8/M8OkakBgjv8WkHhVSuDrqo1sEagYHVLAdN/FCHkqfXMDlEfoIPevJuWpkqQgk6leojvPJFT47tuCrq45DOqAsNNXCY8XZs1K6q7WqgGUf9PiMQdri2YWtoUgfpdwbwRIYa3fVU3dYgR8U+vowvq0hHcZBhmy5khNGFlhf4pDrvAQIDzc3QrFJev8hxOXDeyYTqaq4LG571lecXV97zco7nIn8so9NW0WLlU/j2CvBBRuD9jC668rDpOQ0+8QHUXZxW7lKKuUABrHoGZ/oSTq7UNdCYsAev7Blc6PBOlarqOqTplSeId820KjzzOz3F9HTLdm3QFUA6vn1JPOJc+rEM10RjL+h8muAUVaFjWo5uGJRz0PzIMv8Qpei/UbzHEKtzTEEaPiNDDBM0Z73UV8BGYRi6qq5Z5v4atCpNtF7mzrzTVQ2Zh2ZAnMYRl631ikKecrWXjZwFmvlQqsbdWaaqvJKAaAqadnqWDrtFMi9b5Sxbj3hnJZpjWKatQY6EBP7ZD/D/K8ETLrXNG4F5ruqZoOnxXXRH9FhkfwTH/64JPFJ3IYrs3piqqTqqDron1kVXHYkSUaFtaY6mwq7bdUGKbCti52WZqJnlqfDphc+tWpZqG5YOPwxiZHH6pTx0FQjtIFuaZZm4Ch4ARpYr2DslX7u/cca6yDe6jgZyUlJUAoU7n99z8R6uBXHqULgZ+PYhbcPEdUhWwv/o51FA/ss5gdN0zfYsS4cYWBciVoJHztjTMVAcRCv1IV/LXFbh4AVVx9Ug1t5YANPqOVMf8p1eUnXX1c3VjJxZGl6DMlHLeLYBcWAYuHm4rM1zdBtnmECE+mzi3Ip2dyt459cLronK2csN0zAtW12v08yIwT+s4YLguBz3dlqEb3CzUB/RKCUVZUlBirG3qrLzNgA2Jk3TnRV9Vh87LpcskNpu2Krhwpx6WYTfPyr1z5wF8QzHRnMT745WwzcquIarWfg4+b2Ac5430j0HTfXX85q0TsrnXly8XqpRauiu2Ec5lwZU1fa81TxjWR2U3OdDryDMm/JluwiIA7KoCyMH31qIoWmWqlEKu8kRg3ZzB3qo4Ke8J5lcT8f1Ntby91MicA+7JpolGC6lkP6qMtBuVeEbERRT1zRbp5VUvoNhcXUNz9IsZFogCUgsEvTukun/zhvNOSY+m2Sv5admpODuIBoa7HTT1EFS6yGag8umHNe1NEMHySxiEqK6G6j5gc85aa5hgJTr4wPNbzS6bquuroPU4uGEzuk/cTkM1/NUb61hbWgqnBt8Lr6TxVttAj+4/mr4hLMFLFvDyefqWsbTuUGr+xvnGIyvVEBTnLUW6yYE4O0HuJoW7sJrTRem2oCvP6ie5tkqSK4miwBnP7ke/aC4lvf5NPdDxNH4X/jXWtD82dTd9dYdeYQjn3Im2nr4+jWYkj+y5LtdKstjnJZnOKq32iy2dzNd/3fePRYbOYjVYqoZGfiDFUd18fYKSO40iCCce46aaRq6Ya+2gDxnVHxdQzNQ0GvAlHEEaQ1860ceFdw37rqmanraatPZsUsoR//AZWy2atueaoMUD5MilcCEVzfw1VCUa1o2IhqvIVom+l8L5BzyErnqG0gHD3jLrXsGEoJyb9edxBDYc3UsE812KHcl3kuUzzrnjMcyHXyX9VqTT4ZG4Zz/66aN76NZOxYY7yQ8nd2x8UWgOki1KZjmiPDuVcJZ7kGzLRsNNSpIRRIWedJESY/H6h/OPWUXDZC6s1rCTgeyyOqXaliOvVos3NU0l3GYno4vFF1rGoKTJKozA7cfeTcJVNVQLRekFPxy7Lw7lxaKZl19tfior3DevXvPtU1Xd1Zb2G3dfX5JEZmX4RPecxKGiwQBKXwIJQjnxNuzDMMFOb4HJAiv5/Rsx/Yce7UA6Aa89SOnz3c9w9END6SkLjd25eKfQiUL/34NORdFHc8wHV3z1lr+oIvBf0+AYzuqa5nuahEDFf/hJfHPUaA8xmnwqbp3nHN0Mxw0t3FXyzgaaQ/O/Q/T0DRV91Y7bUPv0FwDnWV6puOttX62wIx4pDFMXIZUW20qU8pQpBn2RiWlkPJIOWQRb/Pgm+fR3MDW15vNtPC3AqnuI74+jqNXDx/a3JIo3D7YdQ0UHtrGqn1+VBq+UugGcrj4avdNiFB3l+CKHvBVVNJcVzNcywMpRrZUIrzw/6wcozisSte3/xhHyfWZ8wwh6je2gf67TZl42sl2NBREwpyghRcJ5xIcI77FNM320JCqqSDn0llEQzORVv4GyYKjPOMsRK/jW9LW83GMwghs13iu5mguyF2UkK3Dmfhgu3gKs1ZokIX4qBVesW1+4r2XBQWdqgFTjJ0TucDcy7bQZMUzV4v2aegP4dG/xkXlqq6Zz3/fjKPjfAYPpG4Td2NwTrxsHZ/1Xm0hhdYDuOYprmXjK33vaUECKUmaq7k6XoleK8zKAz9RDlF+8YvgqfsbZ0xl257nrLfcMCUAX5hhO5ZqeyAFZpgEILH5OSyabWw8ltEfc7UJEsfBVZFWa5IlEvGPFriXuybM3Y4SxOLd+jNNE7fVasvAy+yPbyVMQ90JjetrhVN54QefkBvwT0maF1GQD59wDor4IAiKc9caXYowL5QnP8NFmju/8MF31XLHarVFvA58fKWn8iWLilDxiyKLHq/oz5yb+rbjoGn7amehRpuBP3VcsyzHsAzNWGuYGTclrmUG1KM1PM7fGz3/PjSCjyZ4+mpzPHxrXb1C3/qZc1vE80xD81ZL+h4Dz7fyrpu24enrrSUW2RVZDC5tEmZK8uWT8il8Ua6XA2KqPGapfwj8vGB7i/eQtuO6ruqudpYKUmKuNvYMy3VMmKKvogKTba8oYHqJcwPGsFUUiepbEPeaRLOtW73DmWWq6i6u6rvWsgaUsHzOytNVzzbd1VJRK9BFgJfMSzkojzhjDl01bVvX1hrymEQRKAGJCx0ZprNWCMUoDueCm2o6uqWtl4XFZmd8oZVtIEms1U7Mfw1iXJ68ekdBvwqsQau2qmr6aguIFOynOH30RUTQdMd0NGe1+RFN/+VWM5IB/SuUjmV4jmW5qy3yYOzNQwXX86c84l9Ud3VTdY3Vdv2YpOEbFw3VNE3Xld/Hqwv2lOM1Ka+mL+/SIM/29TPO4dBB1qWZmvRuwiQCTyvoqA0sA+bytUkJcO8mls+/t+doqqfLz7XAUJsje7x3VugudjrS4ySMNb3g5hcZsJAN65oLcqHtLFrhc52KrhmqgTFLX+AuhyShWEDDmQC640mPMEuoh1QAqm4Zlm5Y8o9VDKyAK0TUcYSIIi3pS0C9LsY3B0QRLbJYVf6ubNtkuaDauCSJ5a51KqhcAN+FX/NL+R/+XS9kvBoKu0Gu5mTGjVPVlEOYB1l0wSe7m23ksT/wndF3NEvDaYabFo3/pC7ykK65Wg0V3pbjW8X0dFzMw1pVthNi8cV/qf8VKo2Oj37olrdWOuikAPzRmGp7hqFaIJfzcUvB2z8cS0WxrwVyHxVIE/ANga5rqLZrGquKkQSXbh7e8Alvo7iGvsLe37WIYlwYXaCcOwqSHBdnJK2CtZ6qIr8ZpAjUiwD0sjoaPhW+lpYFjtCgYFTTHTQvkR6A1GDDz7z5XDo+961qjvySzwRrna2h5NFXzirVpqdZjmrL9x59xNUZHr4EM+TwDG2FarU90AJ3e+mGjg9PyV/5LSFXqW7+hXspAE0ANd2VvyFVwj2Hec5tDBou3KTZrrqOgzhf4yJSqnUs7hr9lmZq8mO/EjD/ZQJo1oc7mic/Le0GVMFXA6Iex5t/4zqe6jim/LOjFeQ0ILlOZDdFzJAdNMs2LVt+AbIO9mpTSxQ6MmljhbJQI7GQQIBhmpZmW578DKASepmjhX/iDI9VvKuwQm2ZEiw3Tsc0HaRT+em4JUy8LscN1XYc1VQN+bkKJdR6B9mPY+4C4HgP3LMcTf59j23IafGEt4tFgNv4EkXdkl/NqRvJc+3fqapl402xleLio3L2OYtB4x0GVTNNW/5VGjXW8hwVb3EH3UOTZtVex90OJxw8qA00RKiGba8zuvXnG3zbDaatup4mfxunP9/gQeuZGj7XK/+yJwKW/45pBc0zcB6Sq63T1wRO5eMb7XVHx4V67zKy8WF20OhgWY78+6Ymhja+8ULDNTgM+TXnWnM6ztHCVg3TlJ9CQY/UuUBbKESzTGel9Z5biM6D1VQtHY0U8k/K3yJ0TveAjMDWvJWiMRyjt64K5N3rsCzd1Rz5JeCqUj23Cw1J4ZS9wDzT0TUbX2mxFvYKOPrbvvnbHu8Z7Hk3zGzTxUcs5Z8WndE+Z6qI6eCbq2z5eW4T+uefkSi66lquaznyPcuUAILju66ZKCjV5BejmZIhj8Pwwp2Ebhimoco/XzkrwF4kDd3QTW+FOzDz6JT4xTXDmR9BegjL/Nr62Z48461qZKI5+goJtkwi8HUG1XXxpdryV8maGzPQ3D3hVrljqAjvCoNvG+4toVGgCqNmWXiCqcm/+68NvX3yjffWCMN2dFX+pmEDO8heLkWq5AXiw5sW4anlIZe7mAnfmXnXUVUEWb4voaqZMxTGh7VdV/7GfQO61RW5VyV01cHTe13+tYND2Oh9koToc5b21wxk2vh0jXSdR0kQX9FY4/Nd+YCvCHU83bAN6aH6DalSvFxCvqIVnuc4uq2b0uORFlqR9WDNM1zPtTX5C8I14Cr3rrxrLcFLrWf0XpScuO9XVFXbRlGgJI3Xaz+RH7dmcXgI95PDvrzr5pKFvOOip5mqiqun3xs8114CrpnuyTra1sZOCruSXzirbeKx3PJkFXZtg+XPf7VRCG3jlayVNcqXMI3mLY7hybr5uATbOvRRTdb5qjnhCgv4MJCqyfQSN7Rhcj0rAnNCfPGdo3qyDlr10JY+ulwmjoqIt16WbeKFbVvWLLYLmfeeB8N2VUM6QtKryD1oRz/gDIvx1pHnmrJC+RvcajhoTg5zDsSGq+q25kh1Xh285Vv8kZpuIHswPUfSnuKER+BSr4tm/apnyjrhRYHLu+/pqqZrOqqkgHLGd/FZgosv6ZYVAvcQ432L7vGSuhw0Z8dzLcO2HM1cZyCuX+HC6qLZsu6pK2ka/8pZIlnVkT1YSLOrjGZcm7OO51nSNulvALMwwT2MdDahEcLWkL81DVnpUuPjrxJc+EquoVmDgyYOttSQoSpoc5soVw8OYZluUB6N4twWx7er67qsTGZm9HzV7hzPUjVV1g33LOCF1uldFA1rriPrSCYdv3+OiNkrF59zcxmNhY6HhkNJOzkL9M65HKRp+CyyrLRyFvxx9Jj5nPlByHBsWzddT1YdiGoRoL+i7B8OWXn8ww+eRLqtjlN4cQlASftTdPicC/iGaTsucpASoVZ737VJ8CWrWJ6F5oJS164qnEJdT3dwRoQpK3mbpk/eLQXTxjXWZfqICig+A6bg2erfUs6keM3VDR2FzFJDvSC94mEjb37g3EzwVHy5jqQO1Uyfdiigw/9P5lJXvtwRz7BMvH4taYCmg+VLt1NtyzZkWesIUN7R1zQMFcVta1sAF1w0TuGcFVXW3uIN7m3mH6W8y+3of0xLVokGGtS/X8Mr73KwbnsWcrOSokgaWk43oHj4ogfblnXmmgZVYJTVDBVPKmxZOSl0uO1aKFyoUSdzbMeQdT3QSEfj82GGpek6GspWNIhLFn3mQ+uoBr4Q0V2xo1VugVO5nqsj45V14HPEMfDFXZauSwP6jIsMdW4cGTzhQ21qKt7qlLGtUV5wVB3k6qQTtNwDScv3g4D3AiFkIiau1GeZsiUQyv0yLBcBlRE4MGlZbMfARlMKR05hzA768nCtUj7iTrIvzyDJ2FSkIL08cc4okSXYnqvJOOtHYF5iv8BTyR3xbec9WWriDXtVx7R1KfNfArfO9bqZL/8+rWKbuumgIUOaDQzQcvoEUzVNV0oNzi7OU7kL9/wicqgajRM23oqTEaF30fphrqBwl7M4Jq6Co0upO91F+Rglh/JeVX6Vuo7jqrYqI/WzhzVNizj1D9xVFlXLU1UZdYW6OIPHT6FS5YeHCcLIp1g0d3A9Q5VxVq+H9ymK+ZRalvXT5FwTM+ZR/bgIswRx2Z/9gPfeIUM3PDTZWQ91eXCW89JcFLLompSdhVG0V/Rp8BJwugTN0RzPsWRURxtDnPnJIT3vectX4IVGW7Vl3Kw8GMP4QwILWQGaIEgfaIV2GfAV1Q6uoikbJer+Suy/cCZxm47tWqjBpc22GphVVTY+T6UZaGw1bRkLSD2YnaKIPGBdFFjZaA4r3TwJVN5Ji+YaDt6tlbFW38VZ35RC6iHyriHifBZb0/HV6bIBZ/4XRcRcNdVVVc/SZRyN6Dn+9JoFoZKlV97Td/jmQcezLRlnYXtYy/uxo+TINxcwLM1QcfkU2Tg7h135tkFVXPvSkXHNXhdqN+9EYKHFQIGg40m5Aq2HOI65a2shZ+WYBgoApXcrjFJgxUJDkxUU+bkykr+oBtCk8Zz9BDktTrPFN1Vrpm5Ij1hGUIuo3LEN5BocGUnQBPvpgqLsSAFZe8Fn+FF8IC80RPZLbLhc1hQpvWajKYxm2/IWYMoLA6tIxk/EEePRDI29Mq4/JICb5LMxKxZInlNRiGOZEpe72MDzzXVd19N1eTPHWehl4mvCeUBUx+cu0XRNYnRB0GEnOCsCPhHCJwYeI3VPXbBYXlZr5TJX17FMR/MWXLfoX3iLFTkO6hlLssGz0D+ckYMuzjHXwrPn2ZqnU0ZwFB5SRbsWKXpt99W/CNyw5+FSva5L6UVMbKuLcOsDcn6W89ZrwRmHKIzVKa6IHwmfX3FMXKnN5VNJBSBH7wac26Waa5poxDYpC/vsCDhl9zxTtT3KJSwMnPkvf8EHpU3HMCiJnMx8ucZuNIA46jCEY2Aa8e6GOKbl2KizDz0LA9cyWuGzKtP1XDzecKkYB8q8saeDXAwK8hf364c8DvZlmZ/dQ5AFVUIC/pHLv1iWbqEQmFn8aqMelzup7xkTqSisqo7uuJouvXhPdUv2DXdbBIEru1xLc3ENH+mFZqYE4PNqyJXi0pvy7+ya1z3nkpnrGXjJXHoxs0qAU5ZeLzmu1oEwdX8TOizloD5guy4lp3jOB5HNpq9B3FTR3Ne3YHKO80irumsYFscoOw2GbwDUcOIBpT7pDJYcYSCxT3P5OnrMWRfSNSxDtyml5PlA8DlKvOeKa/cNbZ2tWcrZD5yVaIblof9bHgzOoeE7pIqPNBu0hV42OKTzgmlHw3Gq45mUW66E8XDmcqqepaKIYy1Xf8pCnMeXfmk8Y/cR58RMMzVP0yxX/pbz6aLkUfJJaHnRQ4EBTjtYHOKVjiNq6oMJ3BGoqQauDkVbN+TBwDmL12wDDykczgujqAvUoe5Q+HHKmbWCj1Nbns3hIvyLUHlK3TZU16VkKLNM4RKs9oOCrDI947S4qjk4F+d11bGRK9Btrhm0QJV9U8V3Omu6/o//fPWP/wunQjXp=END_SIMPLICITY_STUDIO_METADATA
# END OF METADATA