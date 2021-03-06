# ----------------------------------------------------------------------------
# This file is part of the Motate project. It is heavily modified from a file
# that contained this original copyright:

# ----------------------------------------------------------------------------
#         ATMEL Microcontroller Software Support
# ----------------------------------------------------------------------------
# Copyright (c) 2010, Atmel Corporation
#
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following condition is met:
#
# - Redistributions of source code must retain the above copyright notice,
# this list of conditions and the disclaimer below.
#
# Atmel's name may not be used to endorse or promote products derived from
# this software without specific prior written permission.
#
# DISCLAIMER: THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR
# IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
# DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR ANY DIRECT, INDIRECT,
# INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
# LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA,
# OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
# LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
# NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
# EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
# ----------------------------------------------------------------------------

#-------------------------------------------------------------------------------
#        User-modifiable options
#-------------------------------------------------------------------------------

ifeq ('$(CHIP)','')
$(error CHIP not defined)
endif

include $(MOTATE_PATH)/platform/atmel_sam/atmel_sam_series.mk

# fill the needed variables
ifeq ($(CHIP),$(findstring $(CHIP), $(SAM3N)))

#BOARD:=SAM3N_EK
CHIP_SERIES:=sam3n

else ifeq ($(CHIP),$(findstring $(CHIP), $(SAM3S)))

#BOARD:=SAM3S_EK
CHIP_SERIES:=sam3s

else ifeq ($(CHIP),$(findstring $(CHIP), $(SAM3SD8)))

#BOARD:=SAM3S_EK2
CHIP_SERIES:=sam3sd8

else ifeq ($(CHIP),$(findstring $(CHIP), $(SAM3U)))

#BOARD:=SAM3U_EK
CHIP_SERIES:=sam3u

else ifeq ($(CHIP),$(findstring $(CHIP), $(SAM3XA)))

#BOARD:=SAM3X_EK
CHIP_SERIES:=sam3xa

else ifeq ($(CHIP),$(findstring $(CHIP), $(SAM4S)))

#BOARD:=SAM4S_EK
CHIP_SERIES:=sam4s

else

$(error $(CHIP) is not a known Atmel processor.)

endif



# GCC toolchain provider
GCC_TOOLCHAIN = as_gcc

# Toolchain prefix when cross-compiling
CROSS_COMPILE = arm-none-eabi

SAM_PATH    = $(CMSIS_ROOT)/TARGET_Atmel
DEVICE_PATH = $(SAM_PATH)/$(CHIP_SERIES)

SAM_SOURCE_DIRS += $(MOTATE_PATH)/Atmel_$(CHIP_SERIES)
SAM_SOURCE_DIRS += $(DEVICE_PATH)/source
SAM_SOURCE_DIRS += $(DEVICE_PATH)/source/$(GCC_TOOLCHAIN)
SAM_SOURCE_DIRS += $(MOTATE_PATH)/platform/atmel_sam
FIRST_LINK_SOURCES += $(MOTATE_PATH)/platform/atmel_sam/syscalls_sam3.c

DEVICE_RULES = $(call CREATE_DEVICE_LIBRARY,SAM,cmsis_sam)

# Flags
DEVICE_INCLUDE_DIRS += $(CMSIS_ROOT)
DEVICE_INCLUDE_DIRS += $(DEVICE_PATH)/include
DEVICE_INCLUDE_DIRS += $(SAM_PATH)
DEVICE_INCLUDE_DIRS += $(SAM_PATH)/$(SERIES)/include
DEVICE_INCLUDE_DIRS += $(MOTATE_PATH)/$(CHIP_SERIES)
DEVICE_INCLUDE_DIRS += $(MOTATE_PATH)/platform/atmel_sam

CPU_DEV = cortex-m3
DEVICE_LINKER_SCRIPT = $(DEVICE_PATH)/source/$(GCC_TOOLCHAIN)/$(CHIP_LOWERCASE)_flash.ld
DEVICE_LINKER_SCRIPT_PATH = $(DEVICE_PATH)/source/$(GCC_TOOLCHAIN)/


include $(MOTATE_PATH)/arch/arm.mk
