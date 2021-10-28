#
# Copyright (C) 2020-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# GMS RRO overlay packages
PRODUCT_PACKAGES += \
    GmsConfigOverlayCommon \
    GmsConfigOverlayComms \
    GmsConfigOverlayContactsProvider \
    GmsConfigOverlayGeotz \
    GmsConfigOverlayGSA \
    GmsConfigOverlayPhotos \
    GmsConfigOverlaySettings \
    GmsConfigOverlaySettingsProvider \
    GmsConfigOverlayTelecom \
    GmsConfigOverlayTeleService \
    GmsConfigOverlayTurbo

# GMS properties
PRODUCT_PRODUCT_PROPERTIES += \
    ro.opa.eligible_device=true \
    ro.setupwizard.rotation_locked=true \
    setupwizard.theme=glif_v3_light

# Pixel RRO overlay packages
PRODUCT_PACKAGES += \
    GoogleConfigOverlay \
    NexusLauncherOverlay \
    PixelConfigOverlayCommon \
    PixelDocumentsUIGoogleOverlay \
    PixelSetupWizardOverlay \
    SystemUIGXOverlay

# Pixel properties
PRODUCT_PRODUCT_PROPERTIES += \
    ro.boot.vendor.overlay.theme=com.android.internal.systemui.navbar.gestural;com.google.android.systemui.gxoverlay

# Lineage RRO overlay packages
PRODUCT_PACKAGES += \
    LineageConfigOverlay

$(call inherit-product, vendor/gms/common/common-vendor.mk)
