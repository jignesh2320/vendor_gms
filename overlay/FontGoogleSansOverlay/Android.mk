#
# Copyright (C) 2020-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_PACKAGE_NAME := FontGoogleSansOverlay
LOCAL_RRO_THEME := FontGoogleSans
LOCAL_PRODUCT_MODULE := true
LOCAL_SRC_FILES := $(call all-subdir-java-files)
LOCAL_RESOURCE_DIR := $(LOCAL_PATH)/res
LOCAL_SDK_VERSION := current
include $(BUILD_RRO_PACKAGE)
