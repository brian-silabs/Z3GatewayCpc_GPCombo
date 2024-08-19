####################################################################
# Automatically-generated file. Do not edit!                       #
# Makefile Version 15                                              #
####################################################################

BASE_SDK_PATH = /Users/brrodrig/SimplicityStudio/SDKs/simplicity_sdk_2
UNAME:=$(shell $(POSIX_TOOL_PATH)uname -s | $(POSIX_TOOL_PATH)sed -e 's/^\(CYGWIN\).*/\1/' | $(POSIX_TOOL_PATH)sed -e 's/^\(MINGW\).*/\1/')
ifeq ($(UNAME),MINGW)
# Translate "C:/super" into "/C/super" for MinGW make.
SDK_PATH := /$(shell $(POSIX_TOOL_PATH)echo $(BASE_SDK_PATH) | sed s/://)
endif
SDK_PATH ?= $(BASE_SDK_PATH)
COPIED_SDK_PATH ?= simplicity_sdk_2024.6.1

# This uses the explicit build rules below
PROJECT_SOURCE_FILES =

C_SOURCE_FILES   += $(filter %.c, $(PROJECT_SOURCE_FILES))
CXX_SOURCE_FILES += $(filter %.cpp, $(PROJECT_SOURCE_FILES))
CXX_SOURCE_FILES += $(filter %.cc, $(PROJECT_SOURCE_FILES))
ASM_SOURCE_FILES += $(filter %.s, $(PROJECT_SOURCE_FILES))
ASM_SOURCE_FILES += $(filter %.S, $(PROJECT_SOURCE_FILES))
LIB_FILES        += $(filter %.a, $(PROJECT_SOURCE_FILES))

C_DEFS += \
 '-DSL_COMPONENT_CATALOG_PRESENT=1' \
 '-DSL_CODE_COMPONENT_CORE=core' \
 '-DEZSP_HOST=1' \
 '-DGATEWAY_APP=1' \
 '-DPLATFORM_HEADER="platform-header.h"' \
 '-DSTACK_CORE_HEADER="stack/core/sl_zigbee_stack.h"' \
 '-DSTACK_HEADER="stack/include/sl_zigbee.h"' \
 '-DSTACK_TYPES_HEADER="stack/include/sl_zigbee_types.h"' \
 '-DUC_BUILD=1' \
 '-DEZSP_CPC=1' \
 '-DUSE_ZAP_CONFIG=1' \
 '-DEZSP_APPLICATION_HAS_MFGLIB_HANDLER=1' \
 '-DCONFIGURATION_HEADER="app/framework/util/config.h"'

ASM_DEFS += \
 '-DSL_COMPONENT_CATALOG_PRESENT=1' \
 '-DSL_CODE_COMPONENT_CORE=core' \
 '-DEZSP_HOST=1' \
 '-DGATEWAY_APP=1' \
 '-DPLATFORM_HEADER="platform-header.h"' \
 '-DSTACK_CORE_HEADER="stack/core/sl_zigbee_stack.h"' \
 '-DSTACK_HEADER="stack/include/sl_zigbee.h"' \
 '-DSTACK_TYPES_HEADER="stack/include/sl_zigbee_types.h"' \
 '-DUC_BUILD=1' \
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
 -I$(COPIED_SDK_PATH)/platform/service/legacy_printf/inc \
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

$(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/ember-printf-convert.o: $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/ember-printf-convert.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/ember-printf-convert.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/ember-printf-convert.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/ember-printf-convert.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/ember-printf-convert.o

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