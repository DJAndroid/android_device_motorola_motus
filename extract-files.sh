#!/bin/sh

# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file is generated by device/motorola/common/generate-blob-scripts.sh - DO NOT EDIT

DEVICE=motus

mkdir -p ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/akmd2 ../../../vendor/motorola/$DEVICE/proprietary/
chmod 755 ../../../vendor/motorola/$DEVICE/proprietary/akmd2
adb pull /system/bin/touchpad ../../../vendor/motorola/$DEVICE/proprietary/
adb pull /system/bin/minipadut ../../../vendor/motorola/$DEVICE/proprietary/
adb pull /system/bin/qmuxd ../../../vendor/motorola/$DEVICE/proprietary/
adb pull /system/bin/fuel_gauge ../../../vendor/motorola/$DEVICE/proprietary/
adb pull /system/bin/port_bridge ../../../vendor/motorola/$DEVICE/proprietary/
adb pull /system/bin/tcmd_engine ../../../vendor/motorola/$DEVICE/proprietary/
adb pull /system/etc/AudioFilter.csv ../../../vendor/motorola/$DEVICE/proprietary/
adb pull /system/etc/AudioPara4.csv ../../../vendor/motorola/$DEVICE/proprietary/
adb pull /system/etc/BCM4325D1_004.002.004.0218.0225.hcd ../../../vendor/motorola/$DEVICE/proprietary/
adb pull /system/etc/wifi/sdio-g-cdc-reclaim-wme.bin ../../../vendor/motorola/$DEVICE/proprietary/
adb pull /system/lib/egl/libGLES_qcom.so ../../../vendor/motorola/$DEVICE/proprietary/
adb pull /system/lib/libaudioeq.so ../../../vendor/motorola/$DEVICE/proprietary/
adb pull /system/lib/libril-qc-1.so ../../../vendor/motorola/$DEVICE/proprietary/
adb pull /system/lib/libqmi.so ../../../vendor/motorola/$DEVICE/proprietary/
adb pull /system/lib/libwmsts.so ../../../vendor/motorola/$DEVICE/proprietary/
adb pull /system/lib/libcm.so ../../../vendor/motorola/$DEVICE/proprietary/
adb pull /system/lib/libnv.so ../../../vendor/motorola/$DEVICE/proprietary/
adb pull /system/lib/libdss.so ../../../vendor/motorola/$DEVICE/proprietary/
adb pull /system/lib/libgsdi_exp.so ../../../vendor/motorola/$DEVICE/proprietary/
adb pull /system/lib/libgstk_exp.so ../../../vendor/motorola/$DEVICE/proprietary/
adb pull /system/lib/libwms.so ../../../vendor/motorola/$DEVICE/proprietary/
adb pull /system/lib/libmm-adspsvc.so ../../../vendor/motorola/$DEVICE/proprietary/
adb pull /system/lib/liboncrpc.so ../../../vendor/motorola/$DEVICE/proprietary/
adb pull /system/lib/libmmcamera.so ../../../vendor/motorola/$DEVICE/proprietary/
adb pull /system/lib/libOmxCore.so ../../../vendor/motorola/$DEVICE/proprietary/
adb pull /system/lib/libOmxH264Dec.so ../../../vendor/motorola/$DEVICE/proprietary/
adb pull /system/lib/libOmxMpeg4Dec.so ../../../vendor/motorola/$DEVICE/proprietary/
adb pull /system/lib/libOmxVidEnc.so ../../../vendor/motorola/$DEVICE/proprietary/
adb pull /system/lib/libvideotrimer.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/usr/keychars/adp5588_motus.kcm.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/usr/keylayout/adp5588_motus.kl ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/usr/keylayout/headset.kl ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/usr/keylayout/motus-kpd.kl ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/usr/keylayout/touchscreen.kl ../../../vendor/motorola/$DEVICE/proprietary

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g > ../../../vendor/motorola/$DEVICE/$DEVICE-vendor-blobs.mk
# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file is generated by device/motorola/__DEVICE__/extract-files.sh - DO NOT EDIT

# All the blobs necessary for motus
PRODUCT_COPY_FILES += \\
    vendor/motorola/__DEVICE__/proprietary/akmd2:vendor/bin/akmd2 \\
    vendor/motorola/__DEVICE__/proprietary/touchpad:system/bin/touchpad \\
    vendor/motorola/__DEVICE__/proprietary/minipadut:system/bin/minipadut \\
    vendor/motorola/__DEVICE__/proprietary/qmuxd:system/bin/qmuxd \\
    vendor/motorola/__DEVICE__/proprietary/fuel_gauge:system/bin/fuel_gauge \\
    vendor/motorola/__DEVICE__/proprietary/port_bridge:system/bin/port_bridge \\
    vendor/motorola/__DEVICE__/proprietary/tcmd_engine:system/bin/tcmd_engine \\
    vendor/motorola/__DEVICE__/proprietary/AudioFilter.csv:system/etc/AudioFilter.csv \\
    vendor/motorola/__DEVICE__/proprietary/AudioPara4.csv:system/etc/AudioPara4.csv \\
    vendor/motorola/__DEVICE__/proprietary/BCM4325D1_004.002.004.0218.0225.hcd:system/etc/BCM4325D1_004.002.004.0218.0225.hcd \\
    vendor/motorola/__DEVICE__/proprietary/sdio-g-cdc-reclaim-wme.bin:system/etc/wifi/sdio-g-cdc-reclaim-wme.bin \\
    vendor/motorola/__DEVICE__/proprietary/libaudioeq.so:system/lib/libaudioeq.so \\
    vendor/motorola/__DEVICE__/proprietary/libril-qc-1.so:system/lib/libril-qc-1.so \\
    vendor/motorola/__DEVICE__/proprietary/libwmsts.so:system/lib/libwmsts.so \\
    vendor/motorola/__DEVICE__/proprietary/libqmi.so:system/lib/libqmi.so \\
    vendor/motorola/__DEVICE__/proprietary/libnv.so:system/lib/libnv.so \\
    vendor/motorola/__DEVICE__/proprietary/libwmsts.so:system/lib/libwmsts.so \\
    vendor/motorola/__DEVICE__/proprietary/libcm.so:system/lib/libcm.so \\
    vendor/motorola/__DEVICE__/proprietary/libdss.so:system/lib/libdss.so \\
    vendor/motorola/__DEVICE__/proprietary/libgsdi_exp.so:system/lib/libgsdi_exp.so \\
    vendor/motorola/__DEVICE__/proprietary/libgstk_exp.so:system/lib/libgstk_exp.so \\
    vendor/motorola/__DEVICE__/proprietary/libwms.so:system/lib/libwms.so \\
    vendor/motorola/__DEVICE__/proprietary/liboncrpc.so:system/lib/liboncrpc.so \\
    vendor/motorola/__DEVICE__/proprietary/libmm-adspsvc.so:system/lib/libmm-adspsvc.so \\
    vendor/motorola/__DEVICE__/proprietary/libmmcamera.so:system/lib/libmmcamera.so \\
    vendor/motorola/__DEVICE__/proprietary/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \\
    vendor/motorola/__DEVICE__/proprietary/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \\
    vendor/motorola/__DEVICE__/proprietary/libOmxVidEnc.so:system/lib/libOmxVidEnc.so \\
    vendor/motorola/__DEVICE__/proprietary/libvideotrimer.so:system/lib/libvideotrimer.so \\
    vendor/motorola/__DEVICE__/proprietary/libOmxCore.so:system/lib/libOmxCore.so \\
    vendor/motorola/__DEVICE__/proprietary/adp5588_motus.kcm.bin:system/usr/keychars/adp5588_motus.kcm \\
    vendor/motorola/__DEVICE__/proprietary/adp5588_motus.kl:system/usr/keylayout/adp5588_motus.kl \\
    vendor/motorola/__DEVICE__/proprietary/headset.kl:system/usr/keylayout/headset.kl \\
    vendor/motorola/__DEVICE__/proprietary/motus-kpd.kl:system/usr/keylayout/motus-kpd.kl \\
    vendor/motorola/__DEVICE__/proprietary/touchscreen.kl:system/usr/keylayout/touchscreen.kl

EOF

./setup-makefiles.sh
