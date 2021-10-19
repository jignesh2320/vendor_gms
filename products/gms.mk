#
# Copyright (C) 2020-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Overlay
PRODUCT_PACKAGES += \
    ContactsProviderOverlay \
    DocumentsUIOverlay \
    FilesOverlay \
    FontGoogleSansOverlay \
    GmsConfigOverlay \
    NexusLauncherOverlay \
    TurboOverlay

# SetupWizard
PRODUCT_PRODUCT_PROPERTIES += \
    ro.opa.eligible_device=true \
    ro.setupwizard.rotation_locked=true \
    setupwizard.theme=glif_v3_light

$(call inherit-product, vendor/gms/common/common-vendor.mk)
