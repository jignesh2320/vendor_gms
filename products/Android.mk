#
# Copyright (C) 2020-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := fonts_customization.google-sans.xml
LOCAL_SRC_FILES := fonts_customization.google-sans.xml
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_PRODUCT_MODULE := true
include $(BUILD_PREBUILT)

# We can not use LOCAL_INSTALLED_MODULE_STEM := fonts_customization.xml because that will create overriding targets
# This is pretty ugly but allow us to disable BUILD_BROKEN_DUP_RULES
fonts_customization := $(TARGET_OUT_PRODUCT_ETC)/fonts_customization.xml
fonts_customization_merged := $(TARGET_OUT_PRODUCT_ETC)/fonts_customization.merged.xml
fonts_customization_google-sans := $(TARGET_OUT_PRODUCT_ETC)/fonts_customization.google-sans.xml

$(fonts_customization_merged): $(fonts_customization) $(fonts_customization_google-sans)
	(head -n -1 $(fonts_customization) && echo "" && tail -n +2 $(fonts_customization_google-sans)) > $(fonts_customization_merged)
	mv $(fonts_customization_merged) $(fonts_customization)

ALL_DEFAULT_INSTALLED_MODULES += $(fonts_customization_merged)
