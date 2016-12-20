################################################################################
# kernel
################################################################################
PRODUCT_COPY_FILES += \
	kernel/arch/arm/boot/uImage:kernel

################################################################################
# bootloader
################################################################################
PRODUCT_COPY_FILES += \
	u-boot/u-boot.bin:bootloader

################################################################################
# 2ndboot
################################################################################
PRODUCT_COPY_FILES += \
	device/nexell/s5p4418_realphone/boot/2ndboot.bin:2ndbootloader

################################################################################
# overlay apps
################################################################################
#PRODUCT_COPY_FILES += \
	#hardware/samsung_slsi/slsiap/overlay-apps/GooglePinyinIME.apk:system/app/PinyinIME.apk

################################################################################
# init
################################################################################
PRODUCT_COPY_FILES += \
	device/nexell/s5p4418_realphone/init.s5p4418_realphone.rc:root/init.s5p4418_realphone.rc \
	device/nexell/s5p4418_realphone/init.s5p4418_realphone.usb.rc:root/init.s5p4418_realphone.usb.rc \
	device/nexell/s5p4418_realphone/init.recovery.s5p4418_realphone.rc:root/init.recovery.s5p4418_realphone.rc \
	device/nexell/s5p4418_realphone/fstab.s5p4418_realphone:root/fstab.s5p4418_realphone \
	device/nexell/s5p4418_realphone/ueventd.s5p4418_realphone.rc:root/ueventd.s5p4418_realphone.rc \
	device/nexell/s5p4418_realphone/adj_lowmem.sh:root/adj_lowmem.sh 

#	device/nexell/s5p4418_realphone/bootanimation.zip:system/media/bootanimation.zip
################################################################################
# key
################################################################################
PRODUCT_COPY_FILES += \
	device/nexell/s5p4418_realphone/keypad_s5p4418_realphone.kl:system/usr/keylayout/keypad_s5p4418_realphone.kl \
	device/nexell/s5p4418_realphone/keypad_s5p4418_realphone.kcm:system/usr/keychars/keypad_s5p4418_realphone.kcm

################################################################################
# recovery 
################################################################################
PRODUCT_COPY_FILES += \
	device/nexell/s5p4418_realphone/busybox:system/bin/busybox \
	device/nexell/s5p4418_realphone/busybox:busybox

################################################################################
# touch
################################################################################
PRODUCT_COPY_FILES += \
    device/nexell/s5p4418_realphone/ft5x0x_ts.idc:system/usr/idc/ft5x0x_ts.idc

################################################################################
# camera
################################################################################
PRODUCT_PACKAGES += \
	camera.slsiap

################################################################################
# hwc executable
################################################################################
PRODUCT_PACKAGES += \
    report_hwc_scenario

################################################################################
# sensor
################################################################################
PRODUCT_PACKAGES += \
	sensors.s5p4418_realphone

################################################################################
# miracast sink
################################################################################
#PRODUCT_PACKAGES += \
	#Mira4U

################################################################################
# storage
################################################################################
#PRODUCT_COPY_FILES += \
	#device/nexell/s5p4418_realphone/vold.fstab:system/etc/vold.fstab

PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml

################################################################################
# audio
################################################################################
# mixer paths
PRODUCT_COPY_FILES += \
	device/nexell/s5p4418_realphone/audio/tiny_hw.s5p4418_realphone.xml:system/etc/tiny_hw.s5p4418_realphone.xml
# audio policy configuration
PRODUCT_COPY_FILES += \
	device/nexell/s5p4418_realphone/audio/audio_policy.conf:system/etc/audio_policy.conf

################################################################################
# media, camera
################################################################################
PRODUCT_COPY_FILES += \
	device/nexell/s5p4418_realphone/media_codecs.xml:system/etc/media_codecs.xml \
	device/nexell/s5p4418_realphone/media_profiles.xml:system/etc/media_profiles.xml

################################################################################
# sensor
################################################################################
PRODUCT_PACKAGES += \
	sensors.s5p4418_realphone

################################################################################
# camera
################################################################################
PRODUCT_PACKAGES += \
	camera.slsiap

################################################################################
# hwc executable
################################################################################
PRODUCT_PACKAGES += \
	report_hwc_scenario

################################################################################
# modules 
################################################################################
# ogl
PRODUCT_COPY_FILES += \
	hardware/samsung_slsi/slsiap/prebuilt/library/libVR.so:system/lib/libVR.so \
	hardware/samsung_slsi/slsiap/prebuilt/library/libEGL_vr.so:system/lib/egl/libEGL_vr.so \
	hardware/samsung_slsi/slsiap/prebuilt/library/libGLESv1_CM_vr.so:system/lib/egl/libGLESv1_CM_vr.so \
	hardware/samsung_slsi/slsiap/prebuilt/library/libGLESv2_vr.so:system/lib/egl/libGLESv2_vr.so

PRODUCT_COPY_FILES += \
	hardware/samsung_slsi/slsiap/prebuilt/modules/vr.ko:system/lib/modules/vr.ko

# coda
PRODUCT_COPY_FILES += \
	hardware/samsung_slsi/slsiap/prebuilt/modules/nx_vpu.ko:system/lib/modules/nx_vpu.ko

# ffmpeg libraries
EN_FFMPEG_EXTRACTOR := true
EN_FFMPEG_AUDIO_DEC := true
ifeq ($(EN_FFMPEG_EXTRACTOR),true)
PRODUCT_COPY_FILES += \
	hardware/samsung_slsi/slsiap/omx/codec/ffmpeg/libs/libavcodec-2.1.4.so:system/lib/libavcodec-2.1.4.so    \
	hardware/samsung_slsi/slsiap/omx/codec/ffmpeg/libs/libavdevice-2.1.4.so:system/lib/libavdevice-2.1.4.so  \
	hardware/samsung_slsi/slsiap/omx/codec/ffmpeg/libs/libavfilter-2.1.4.so:system/lib/libavfilter-2.1.4.so  \
	hardware/samsung_slsi/slsiap/omx/codec/ffmpeg/libs/libavformat-2.1.4.so:system/lib/libavformat-2.1.4.so  \
	hardware/samsung_slsi/slsiap/omx/codec/ffmpeg/libs/libavresample-2.1.4.so:system/lib/libavresample-2.1.4.so \
	hardware/samsung_slsi/slsiap/omx/codec/ffmpeg/libs/libavutil-2.1.4.so:system/lib/libavutil-2.1.4.so      \
	hardware/samsung_slsi/slsiap/omx/codec/ffmpeg/libs/libswresample-2.1.4.so:system/lib/libswresample-2.1.4.so \
	hardware/samsung_slsi/slsiap/omx/codec/ffmpeg/libs/libswscale-2.1.4.so:system/lib/libswscale-2.1.4.so
endif

# Nexell Dual Audio
EN_DUAL_AUDIO := false
ifeq ($(EN_DUAL_AUDIO),true)
	PRODUCT_COPY_FILES += \
	  	hardware/samsung_slsi/slsiap/prebuilt/libnxdualaudio/lib/libnxdualaudio.so:system/lib/libnxdualaudio.so
endif
################################################################################
# gps
################################################################################
PRODUCT_COPY_FILES += \
        vendor/lvyang/gps/gps.conf:system/etc/gps.conf\
        vendor/lvyang/gps/u-blox.conf:system/etc/u-blox.conf

################################################################################
# generic
################################################################################
PRODUCT_COPY_FILES += \
	device/nexell/s5p4418_realphone/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:system/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml\
	frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml 
   

PRODUCT_COPY_FILES += \
	linux/platform/s5p4418/library/lib/libnxvidrc_android.so:system/lib/libnxvidrc_android.so


PRODUCT_AAPT_CONFIG := normal large xlarge hdpi xhdpi xxhdpi
#PRODUCT_AAPT_PREF_CONFIG := hdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# 4330 delete nosdcard
# PRODUCT_CHARACTERISTICS := tablet,nosdcard
# PRODUCT_CHARACTERISTICS := tablet,usbstorage
PRODUCT_CHARACTERISTICS := tablet

DEVICE_PACKAGE_OVERLAYS := \
	device/nexell/s5p4418_realphone/overlay

PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_PACKAGES += \
    libwpa_client \
    hostapd \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_PACKAGES += \
	LiveWallpapersPicker \
	librs_jni \
	com.android.future.usb.accessory

PRODUCT_PACKAGES += \
	audio.a2dp.default \
	audio.usb.default \
	audio.r_submix.default \
	akmdfs

# Filesystem management tools
PRODUCT_PACKAGES += \
    e2fsck

# Linaro
#PRODUCT_PACKAGES += \
	#GLMark2 \
	#libglmark2-android

# Product Property
# common
PRODUCT_PROPERTY_OVERRIDES := \
	wifi.interface=wlan0 \
	ro.sf.lcd_density=240

# 4330 openl ui property
#PRODUCT_PROPERTY_OVERRIDES += \
	ro.opengles.version=131072 \
	ro.hwui.texture_cache_size=72 \
	ro.hwui.layer_cache_size=48 \
	ro.hwui.path_cache_size=16 \
	ro.hwui.shape_cache_size=4 \
	ro.hwui.gradient_cache_size=1 \
	ro.hwui.drop_shadow_cache_size=6 \
	ro.hwui.texture_cache_flush_rate=0.4 \
	ro.hwui.text_small_cache_width=1024 \
	ro.hwui.text_small_cache_height=1024 \
	ro.hwui.text_large_cache_width=2048 \
	ro.hwui.text_large_cache_height=1024 \
	ro.hwui.disable_scissor_opt=true

# setup dalvik vm configs.
#$(call inherit-product, frameworks/native/build/tablet-10in-xhdpi-2048-dalvik-heap.mk)
$(call inherit-product, frameworks/native/build/tablet-7in-hdpi-1024-dalvik-heap.mk)

# The OpenGL ES API level that is natively supported by this device.
# This is a 16.16 fixed point number
PRODUCT_PROPERTY_OVERRIDES += \
	ro.opengles.version=131072

PRODUCT_PACKAGES += \
	VolantisLayouts5p4418_realphone

PRODUCT_PACKAGES += \
	rtw_fwloader

# Enable AAC 5.1 output
#PRODUCT_PROPERTY_OVERRIDES += \
	media.aac_51_output_enabled=true

# set default USB configuration
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	persist.sys.usb.config=mtp

# ota updater test
#PRODUCT_PACKAGES += \
	#OTAUpdateCenter

# miracast sink
 #PRODUCT_PACKAGES += \
	#Mira4U

PRODUCT_LOCALES := zh_CN en_US  

ADDITIONAL_BUILD_PROPERTIES += persist.sys.timezone=Asia/Shanghai

PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.language=zh \
	persist.sys.country=CN

# wifi 
PRODUCT_COPY_FILES += \
    hardware/samsung_slsi/slsiap/prebuilt/modules/bcmdhd.ko:/system/lib/modules/bcmdhd.ko
    
PRODUCT_COPY_FILES += \
	device/nexell/s5p4418_realphone/Broadcom/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
	device/nexell/s5p4418_realphone/Broadcom/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf 

#AP6212
PRODUCT_COPY_FILES += \
    device/nexell/s5p4418_realphone/Broadcom/ap6212/wifi/fw_bcm43438a0.bin:/system/etc/firmware/fw_bcm43438a0.bin \
    device/nexell/s5p4418_realphone/Broadcom/ap6212/wifi/fw_bcm43438a0_apsta.bin:/system/etc/firmware/fw_bcm43438a0_apsta.bin \
    device/nexell/s5p4418_realphone/Broadcom/ap6212/wifi/fw_bcm43438a0_p2p.bin:/system/etc/firmware/fw_bcm43438a0_p2p.bin \
    device/nexell/s5p4418_realphone/Broadcom/ap6212/wifi/nvram_ap6212.txt:/system/etc/firmware/nvram_ap6212.txt
# bt
PRODUCT_COPY_FILES += \
	device/nexell/s5p4418_realphone/Broadcom/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf 

ifeq ($(BOARD_WIFI_VENDOR),broadcom)
WIFI_BAND := 802_11_BG
$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/config/config-bcm.mk)
endif

PRODUCT_PACKAGES += \
	bdcom.s5p4418_realphone
#	bdgps.s5p4418_realphone

# call slsiap
$(call inherit-product-if-exists, hardware/samsung_slsi/slsiap/slsiap.mk)

# google gms
#$(call inherit-product-if-exists, vendor/google/gapps/gapps.mk)

# Nexell Application
#$(call inherit-product-if-exists, vendor/nexell/apps/nxvideoplayer.mk)
#$(call inherit-product-if-exists, vendor/nexell/apps/nxaudioplayer.mk)
#$(call inherit-product-if-exists, vendor/nexell/apps/smartsync.mk)
$(call inherit-product-if-exists, vendor/nexell/apps/wenjianguanli.mk)
$(call inherit-product-if-exists, vendor/nexell/apps/ucenter.mk)


