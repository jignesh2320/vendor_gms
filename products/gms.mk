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

# Pixel RRO overlay packages
PRODUCT_PACKAGES += \
    GoogleConfigOverlay \
    NexusLauncherOverlay \
    PixelConfigOverlayCommon \
    PixelDocumentsUIGoogleOverlay \
    PixelSetupWizardOverlay \
    SystemUIGXOverlay

# Lineage RRO overlay packages
PRODUCT_PACKAGES += \
    LineageConfigOverlay

# GMS properties
PRODUCT_PRODUCT_PROPERTIES += \
    ro.opa.eligible_device=true \
    ro.setupwizard.rotation_locked=true \
    setupwizard.theme=glif_v3_light

# Pixel properties
PRODUCT_PRODUCT_PROPERTIES += \
    ro.boot.vendor.overlay.theme=com.android.internal.systemui.navbar.gestural;com.google.android.systemui.gxoverlay

$(call inherit-product, vendor/gms/common/common-vendor.mk)
