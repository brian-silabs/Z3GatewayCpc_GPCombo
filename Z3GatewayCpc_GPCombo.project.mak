####################################################################
# Automatically-generated file. Do not edit!                       #
# Makefile Version 16                                              #
####################################################################

BASE_SDK_PATH = /Users/brrodrig/SimplicityStudio/SDKs/simplicity_sdk_5
BASE_PKG_PATH = /Users/brrodrig/.silabs/slt/installs
UNAME:=$(shell $(POSIX_TOOL_PATH)uname -s | $(POSIX_TOOL_PATH)sed -e 's/^\(CYGWIN\).*/\1/' | $(POSIX_TOOL_PATH)sed -e 's/^\(MINGW\).*/\1/')
ifeq ($(UNAME),MINGW)
# Translate "C:/super" into "/C/super" for MinGW make.
SDK_PATH := /$(shell $(POSIX_TOOL_PATH)echo $(BASE_SDK_PATH) | sed s/://)
PKG_PATH := /$(shell $(POSIX_TOOL_PATH)echo $(BASE_PKG_PATH) | sed s/://)
endif
SDK_PATH ?= $(BASE_SDK_PATH)
PKG_PATH ?= $(BASE_PKG_PATH)
COPIED_SDK_PATH ?= simplicity_sdk_2024.12.1

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
# SIMPLICITY_STUDIO_METADATA=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END_SIMPLICITY_STUDIO_METADATA
# END OF METADATA