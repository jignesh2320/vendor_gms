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
    PixelConfigOverlayCommon \
    PixelDocumentsUIGoogleOverlay \
    PixelSetupWizardOverlay \
    SystemUIGXOverlay

# Pixel properties
PRODUCT_PRODUCT_PROPERTIES += \
    ro.boot.vendor.overlay.theme=com.android.internal.systemui.navbar.gestural;com.google.android.systemui.gxoverlay \
    ro.com.google.ime.bs_theme=true \
    ro.com.google.ime.theme_id=5 \
    ro.setupwizard.enterprise_mode=1 \
    ro.setupwizard.esim_cid_ignore=00000001 \
    setupwizard.feature.baseline_setupwizard_enabled=true \
    setupwizard.feature.show_pai_screen_in_main_flow.carrier1839=false \
    setupwizard.feature.show_pixel_tos=true \
    setupwizard.feature.skip_button_use_mobile_data.carrier1839=true \

# DerpFest RRO overlay packages
PRODUCT_PACKAGES += \
    DerpConfigOverlay

$(call inherit-product, vendor/gms/common/common-vendor.mk)
