SYSTEM_PART2_MODULE_VERSION ?= 4
SYSTEM_PART2_MODULE_PATH ?= $(PROJECT_ROOT)/modules/dash/system-part2

ifeq ($(MINIMAL),y)
GLOBAL_DEFINES += SYSTEM_MINIMAL
endif

include $(call rwildcard,$(SYSTEM_PART2_MODULE_PATH)/,include.mk)
