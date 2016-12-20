################################################################################
# kernel
################################################################################
PRODUCT_COPY_FILES += \
	kernel/arch/arm/boot/uImage:kernel

################################################################################
# bootloader
################################################################################
#PRODUCT_COPY_FILES += \
	u-boot/u-boot.bin:bootloader

################################################################################
# 2ndboot
################################################################################
#PRODUCT_COPY_FILES += \
	device/nexell/s5p4418_real_door3/boot/2ndboot.bin:2ndbootloader

################################################################################
# overlay apps
################################################################################
#PRODUCT_COPY_FILES += \
	#hardware/samsung_slsi/slsiap/overlay-apps/GooglePinyinIME.apk:system/app/PinyinIME.apk

################################################################################
# init
################################################################################
PRODUCT_COPY_FILES += \
	device/nexell/s5p4418_real_door3/init.s5p4418_real_door3.rc:root/init.s5p4418_real_door3.rc \
	device/nexell/s5p4418_real_door3/init.s5p4418_real_door3.usb.rc:root/init.s5p4418_real_door3.usb.rc \
	device/nexell/s5p4418_real_door3/init.recovery.s5p4418_real_door3.rc:root/init.recovery.s5p4418_real_door3.rc \
	device/nexell/s5p4418_real_door3/fstab.s5p4418_real_door3:root/fstab.s5p4418_real_door3 \
	device/nexell/s5p4418_real_door3/ueventd.s5p4418_real_door3.rc:root/ueventd.s5p4418_real_door3.rc \
	device/nexell/s5p4418_real_door3/adj_lowmem.sh:root/adj_lowmem.sh 
#	device/nexell/s5p4418_real_door3/bootanimation.zip:system/media/bootanimation.zip

################################################################################
# recovery
################################################################################

PRODUCT_COPY_FILES += \
	device/nexell/s5p4418_real_door3/busybox:busybox

################################################################################
# key
################################################################################
#PRODUCT_COPY_FILES += \
	device/nexell/s5p4418_real_door3/keypad_s5p4418_real_door3.kl:system/usr/keylayout/keypad_s5p4418_real_door3.kl \
	device/nexell/s5p4418_real_door3/keypad_s5p4418_real_door3.kcm:system/usr/keychars/keypad_s5p4418_real_door3.kcm

################################################################################
# touch
################################################################################
#PRODUCT_COPY_FILES += \
    device/nexell/s5p4418_real_door3/gslX680.idc:system/usr/idc/gslX680.idc

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
	sensors.s5p4418_real_door3

################################################################################
# miracast sink
################################################################################
#PRODUCT_PACKAGES += \
	#Mira4U

################################################################################
# storage
################################################################################
#PRODUCT_COPY_FILES += \
	#device/nexell/s5p4418_real_door3/vold.fstab:system/etc/vold.fstab

PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml

################################################################################
# audio
################################################################################
# mixer paths
PRODUCT_COPY_FILES += \
	device/nexell/s5p4418_real_door3/audio/tiny_hw.s5p4418_real_door3.xml:system/etc/tiny_hw.s5p4418_real_door3.xml
# audio policy configuration
PRODUCT_COPY_FILES += \
	device/nexell/s5p4418_real_door3/audio/audio_policy.conf:system/etc/audio_policy.conf

################################################################################
# media, camera
################################################################################
PRODUCT_COPY_FILES += \
	device/nexell/s5p4418_real_door3/media_codecs.xml:system/etc/media_codecs.xml \
	device/nexell/s5p4418_real_door3/media_profiles.xml:system/etc/media_profiles.xml

################################################################################
# sensor
################################################################################
PRODUCT_PACKAGES += \
	sensors.s5p4418_real_door3

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
EN_FFMPEG_EXTRACTOR := false
EN_FFMPEG_AUDIO_DEC := false
#ifeq ($(EN_FFMPEG_EXTRACTOR),true)
#PRODUCT_COPY_FILES += \
	#hardware/samsung_slsi/slsiap/omx/codec/ffmpeg/libs/libavcodec-2.1.4.so:system/lib/libavcodec-2.1.4.so    \
	#hardware/samsung_slsi/slsiap/omx/codec/ffmpeg/libs/libavdevice-2.1.4.so:system/lib/libavdevice-2.1.4.so  \
	#hardware/samsung_slsi/slsiap/omx/codec/ffmpeg/libs/libavfilter-2.1.4.so:system/lib/libavfilter-2.1.4.so  \
	#hardware/samsung_slsi/slsiap/omx/codec/ffmpeg/libs/libavformat-2.1.4.so:system/lib/libavformat-2.1.4.so  \
	#hardware/samsung_slsi/slsiap/omx/codec/ffmpeg/libs/libavresample-2.1.4.so:system/lib/libavresample-2.1.4.so \
	#hardware/samsung_slsi/slsiap/omx/codec/ffmpeg/libs/libavutil-2.1.4.so:system/lib/libavutil-2.1.4.so      \
	#hardware/samsung_slsi/slsiap/omx/codec/ffmpeg/libs/libswresample-2.1.4.so:system/lib/libswresample-2.1.4.so \
	#hardware/samsung_slsi/slsiap/omx/codec/ffmpeg/libs/libswscale-2.1.4.so:system/lib/libswscale-2.1.4.so
#endif

# Nexell Dual Audio
EN_DUAL_AUDIO := false
ifeq ($(EN_DUAL_AUDIO),true)
	PRODUCT_COPY_FILES += \
	  	hardware/samsung_slsi/slsiap/prebuilt/libnxdualaudio/lib/libnxdualaudio.so:system/lib/libnxdualaudio.so
endif

################################################################################
# generic
################################################################################
#PRODUCT_COPY_FILES += \
  #device/nexell/s5p4418_real_door3/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
  #frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
  #frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
  #frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
  #frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
  #frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
  #frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
  #frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
  #frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
  #frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
  #linux/slsiap/library/lib/ratecontrol/libnxvidrc_android.so:system/lib/libnxvidrc_android.so

#PRODUCT_COPY_FILES += \
    #frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
    #frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    #frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    #frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    #frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    #frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    #frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    #frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    #frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    #frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    #frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    #frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    #frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    #frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    #frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    #frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    #frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    #frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    #frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    #frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    #frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    #frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    #frameworks/native/data/etc/android.hardware.opengles.aep.xml:system/etc/permissions/android.hardware.opengles.aep.xml \
    #frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml

PRODUCT_COPY_FILES += \
	device/nexell/s5p4418_real_door3/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
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
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml\
  	frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml\
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
	device/nexell/s5p4418_real_door3/overlay

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
	audio.r_submix.default

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
	ro.sf.lcd_density=160

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
$(call inherit-product, frameworks/native/build/tablet-10in-xhdpi-2048-dalvik-heap.mk)
#$(call inherit-product, frameworks/native/build/tablet-7in-hdpi-1024-dalvik-heap.mk)

# The OpenGL ES API level that is natively supported by this device.
# This is a 16.16 fixed point number
PRODUCT_PROPERTY_OVERRIDES += \
	ro.opengles.version=131072

#PRODUCT_PACKAGES += \
	#VolantisLayoutDroneLS5P6818
PRODUCT_PACKAGES += \
	VolantisLayouts5p4418_real_door3

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


# wifi 
PRODUCT_COPY_FILES += \
    hardware/samsung_slsi/slsiap/prebuilt/modules/bcmdhd.ko:/system/lib/modules/bcmdhd.ko
    
PRODUCT_COPY_FILES += \
	device/nexell/s5p4418_real_door3/Broadcom/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
	device/nexell/s5p4418_real_door3/Broadcom/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf 
#AP6210
#PRODUCT_COPY_FILES += \
    device/nexell/s5p4418_real_door3/Broadcom/ap6210/wifi/fw_bcm40181a2.bin:/system/etc/firmware/fw_bcm40181a2.bin \
    device/nexell/s5p4418_real_door3/Broadcom/ap6210/wifi/fw_bcm40181a2_p2p.bin:/system/etc/firmware/fw_bcm40181a2_p2p.bin \
    device/nexell/s5p4418_real_door3/Broadcom/ap6210/wifi/fw_bcm40181a2_apsta.bin:/system/etc/firmware/fw_bcm40181a2_apsta.bin \
    device/nexell/s5p4418_real_door3/Broadcom/ap6210/wifi/nvram_ap6210.txt:/system/etc/firmware/nvram_ap6210.txt

#AP6212
PRODUCT_COPY_FILES += \
    device/nexell/s5p4418_real_door3/Broadcom/ap6212/wifi/fw_bcm43438a0.bin:/system/etc/firmware/fw_bcm43438a0.bin \
    device/nexell/s5p4418_real_door3/Broadcom/ap6212/wifi/fw_bcm43438a0_apsta.bin:/system/etc/firmware/fw_bcm43438a0_apsta.bin \
    device/nexell/s5p4418_real_door3/Broadcom/ap6212/wifi/fw_bcm43438a0_p2p.bin:/system/etc/firmware/fw_bcm43438a0_p2p.bin \
    device/nexell/s5p4418_real_door3/Broadcom/ap6212/wifi/nvram_ap6212.txt:/system/etc/firmware/nvram_ap6212.txt
# bt
PRODUCT_COPY_FILES += \
	device/nexell/s5p4418_real_door3/Broadcom/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf 

#AP6210
#PRODUCT_COPY_FILES += \
	device/nexell/s5p4418_real_door3/Broadcom/ap6210/bt/bcm20710a1.hcd:system/etc/bluetooth/bcm20710a1.hcd

PRODUCT_COPY_FILES += \
	device/nexell/s5p4418_real_door3/Broadcom/ap6212/bt/bcm43438a0.hcd:system/etc/bluetooth/bcm43438a0.hcd

#audio
PRODUCT_PACKAGES += \
	tinyalsa \
	tinymix \
	tinypcminfo \
	tinyplay \
	tinycap
	
#PRODUCT_PACKAGES += \
	gps.s5p448_real_door3\
	libRealarmHardwareJni\
	RealarmApp
# 3G/LTE
#quectel
PRODUCT_COPY_FILES += \
	device/nexell/s5p4418_real_door3/lte/quectel/libquectel-ril.so:system/lib/libquectel-ril.so \
	device/nexell/s5p4418_real_door3/lte/quectel/init.quectel-pppd:system/etc/ppp/init.quectel-pppd\
	device/nexell/s5p4418_real_door3/lte/chat:system/bin/chat	

#apns
PRODUCT_COPY_FILES += \
	device/nexell/s5p4418_real_door3/lte/apns-conf.xml:system/etc/apns-conf.xml
	
#can
#PRODUCT_COPY_FILES += \
	vendor/realarm/hal/all/can.sh:system/bin/can.sh 

# call slsiap
$(call inherit-product-if-exists, hardware/samsung_slsi/slsiap/slsiap.mk)

# google gms
#$(call inherit-product-if-exists, vendor/google/gapps/gapps.mk)

# Nexell Application
#$(call inherit-product-if-exists, vendor/nexell/apps/nxvideoplayer.mk)
#$(call inherit-product-if-exists, vendor/nexell/apps/nxaudioplayer.mk)
#$(call inherit-product-if-exists, vendor/nexell/apps/smartsync.mk)

