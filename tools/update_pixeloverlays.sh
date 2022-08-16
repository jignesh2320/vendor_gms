#!/usr/bin/bash
#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

overlays="
GoogleConfigOverlay
PixelConfigOverlay2018
PixelConfigOverlay2019
PixelConfigOverlay2019Midyear
PixelConfigOverlay2021
PixelConfigOverlayCommon
PixelSetupWizardOverlay
PixelSetupWizardOverlay2019
SystemUIGXOverlay
"

for overlay in $overlays; do
    ./tools/generate_rro.sh "${1}"/product/overlay/${overlay}.apk
    ./tools/beautify_rro.sh overlay/${overlay}
done
