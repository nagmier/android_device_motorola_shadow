# This is the product configuration for a full shadow
DEVICE_PREBUILT := device/moto/shadow/prebuilt

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

# Device overlay
DEVICE_PACKAGE_OVERLAYS += device/moto/shadow/overlay

# high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Audio
PRODUCT_COPY_FILES += \
    device/moto/shadow/audio/libaudio.so:/system/lib/libaudio.so \
    device/moto/shadow/audio/liba2dp.so:/system/lib/liba2dp.so

PRODUCT_PACKAGES := \
    audio.primary.omap3 \
    libaudiohw_legacy \
    audio.a2dp.default \
    libaudioutils \
    hcitools \
    hciattach \
    hcidump 

# HW Libs
PRODUCT_PACKAGES += \
    hwcomposer.default \
    camera.shadow

# Modem
PRODUCT_PACKAGES += \
    libreference-cdma-sms \
    radiooptions

# OMX
PRODUCT_PACKAGES += \
    dspexec \
    libbridge \
    libstagefrighthw \
    libstagefright_omx \
    libOMX_Core \
    libOMX.TI.AAC.decode \
    libOMX.TI.AAC.decode \
    libOMX.TI.AMR.decode \
    libOMX.TI.AMR.encode \
    libOMX.TI.JPEG.Encoder \
    libOMX.TI.MP3.decode \
    libOMX.TI.Video.Decoder \
    libOMX.TI.Video.encoder \
    libOMX.TI.WBAMR.decode \
    libOMX.TI.WBAMR.encode \
    libOMX.TI.WMA.decode

# Radio
PRODUCT_PACKAGES += \
    rild \
    libril \
    libreference-ril

# Wifi
PRODUCT_PACKAGES += \
    libCustomWifi \
    wlan_loader

PRODUCT_PACKAGES += \
    Superuser \
    su \
    hijack-boot.zip \
    mot_boot_mode \
    charge_only_mode

PRODUCT_PACKAGES += \
    librs_jni \
    com.android.future.usb.accessory \
    com.android.nfc_extras

# Hijack files
PRODUCT_COPY_FILES += \
    $(DEVICE_PREBUILT)/bin/hijack:system/bin/hijack \
    $(DEVICE_PREBUILT)/bin/hijack.log_dump:system/bin/hijack.log_dump \
    $(DEVICE_PREBUILT)/etc/hijack-boot.zip:system/etc/hijack-boot.zip \

# Permissions files
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Prebuilts
PRODUCT_COPY_FILES += \
    $(DEVICE_PREBUILT)/bin/mount_ext3.sh:system/bin/mount_ext3.sh \
    $(DEVICE_PREBUILT)/bin/adbd:system/bin/adbd \
    $(DEVICE_PREBUILT)/etc/apns-conf.xml:system/etc/apns-conf.xml \
    $(DEVICE_PREBUILT)/etc/egl.cfg:system/etc/egl.cfg \
    $(DEVICE_PREBUILT)/etc/gps.conf:system/etc/gps.conf \
    $(DEVICE_PREBUILT)/etc/media_profiles.xml:system/etc/media_profiles.xml \
    $(DEVICE_PREBUILT)/etc/powervr.ini:system/etc/powervr.ini \
    $(DEVICE_PREBUILT)/etc/vold.fstab:system/etc/vold.fstab \
    $(DEVICE_PREBUILT)/media/bootanimation.zip:system/media/bootanimation.zip

# Graphics
PRODUCT_COPY_FILES += \
    $(DEVICE_PREBUILT)/imgtec/pvrsrvinit:system/bin/pvrsrvinit \
    $(DEVICE_PREBUILT)/imgtec/libEGL_POWERVR_SGX530_125.so:system/lib/egl/libEGL_POWERVR_SGX530_125.so \
    $(DEVICE_PREBUILT)/imgtec/libGLESv1_CM_POWERVR_SGX530_125.so:system/lib/egl/libGLESv1_CM_POWERVR_SGX530_125.so \
    $(DEVICE_PREBUILT)/imgtec/libGLESv2_POWERVR_SGX530_125.so:system/lib/egl/libGLESv2_POWERVR_SGX530_125.so \
    $(DEVICE_PREBUILT)/imgtec/libglslcompiler.so:system/lib/libglslcompiler.so \
    $(DEVICE_PREBUILT)/imgtec/libHPImgApi.so:system/lib/libHPImgApi.so \
    $(DEVICE_PREBUILT)/imgtec/libIMGegl.so:system/lib/libIMGegl.so \
    $(DEVICE_PREBUILT)/imgtec/libpvr2d.so:system/lib/libpvr2d.so \
    $(DEVICE_PREBUILT)/imgtec/libpvrANDROID_WSEGL.so:system/lib/libpvrANDROID_WSEGL.so \
    $(DEVICE_PREBUILT)/imgtec/libsrv_init.so:system/lib/libsrv_init.so \
    $(DEVICE_PREBUILT)/imgtec/libsrv_um.so:system/lib/libsrv_um.so \
    $(DEVICE_PREBUILT)/imgtec/libusc.so:system/lib/libusc.so \
    $(DEVICE_PREBUILT)/imgtec/libeglinfo.so:system/lib/egl/libeglinfo.so \
    $(DEVICE_PREBUILT)/imgtec/libgles1_texture_stream.so:system/lib/egl/libgles1_texture_stream.so \
    $(DEVICE_PREBUILT)/imgtec/libgles2_texture_stream.so:system/lib/egl/libgles2_texture_stream.so \
    $(DEVICE_PREBUILT)/imgtec/gralloc.omap3.so:system/lib/hw/gralloc.omap3.so

# Key Layouts
PRODUCT_COPY_FILES += \
    $(DEVICE_PREBUILT)/usr/idc/cpcap-key.idc:system/usr/idc/cpcap-key.idc \
    $(DEVICE_PREBUILT)/usr/idc/light-prox.idc:system/usr/idc/light-prox.idc \
    $(DEVICE_PREBUILT)/usr/idc/qtouch-touchscreen.idc:system/usr/idc/qtouch-touchscreen.idc \
    $(DEVICE_PREBUILT)/usr/idc/sholes-keypad.idc:system/usr/idc/sholes-keypad.idc \
    $(DEVICE_PREBUILT)/usr/keylayout/cpcap-key.kl:system/usr/keylayout/cpcap-key.kl \
    $(DEVICE_PREBUILT)/usr/keylayout/qtouch-touchscreen.kl:system/usr/keylayout/qtouch-touchscreen.kl \
    $(DEVICE_PREBUILT)/usr/keylayout/sholes-keypad.kl:system/usr/keylayout/sholes-keypad.kl \
    $(DEVICE_PREBUILT)/usr/keychars/cpcap-key.kcm:system/usr/keychars/cpcap-key.kcm \
    $(DEVICE_PREBUILT)/usr/keychars/qtouch-touchscreen.kcm:system/usr/keychars/qtouch-touchscreen.kcm \
    $(DEVICE_PREBUILT)/usr/keychars/sholes-keypad.kcm:system/usr/keychars/sholes-keypad.kcm

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# still need to set english for audio init
PRODUCT_LOCALES += en_US

# these need to be here for the installer, just put them here for now
PRODUCT_COPY_FILES += \
    device/moto/shadow/releaseutils/mke2fs:system/bin/mke2fs \
    device/moto/shadow/releaseutils/tune2fs:system/bin/tune2fs \
    device/moto/shadow/releaseutils/check_kernel:system/etc/releaseutils/check_kernel \
    device/moto/shadow/releaseutils/finalize_release:system/etc/finalize_release

# copy all kernel modules under the "modules" directory to system/lib/modules
PRODUCT_COPY_FILES += $(shell \
    find device/moto/shadow/modules -name '*.ko' \
    | sed -r 's/^\/?(.*\/)([^/ ]+)$$/\1\2:system\/lib\/modules\/\2/' \
    | tr '\n' ' ')

PRODUCT_PROPERTY_OVERRIDES += \
    mobiledata.interfaces=ppp0 \
    persist.ril.features=0x07 \
    persist.ril.modem.ttydevice=/dev/usb/tty1-3:1.0 \
    persist.ril.mux.noofchannels=7 \
    persist.ril.mux.retries=500 \
    persist.ril.mux.sleep=2 \
    persist.ril.mux.ttydevice=/dev/ttyS0 \
    ro.cdma.data_retry_config=default_randomization=2000,0,0,120000,180000,540000,960000 \
    ro.cdma.home.operator.alpha=Verizon \
    ro.cdma.home.operator.numeric=310004 \
    ro.cdma.homesystem=64,65,76,77,78,79,80,81,82,83 \
    ro.com.google.gmsversion=2.2_r7 \
    ro.kernel.android.ril=yes \
    ro.product.max_num_touch=2 \
    ro.product.multi_touch_enabled=true \
    ro.setupwizard.enable_bypass=1 \
    ro.setupwizard.mode=OPTIONAL \
    ro.telephony.call_ring.delay=1000 \
    ro.telephony.call_ring.multiple=false \
    ro.telephony.sms_segment_size=160 

ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/moto/shadow/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, hardware/ti/omap3/Android.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, frameworks/base/build/phone-hdpi-512-dalvik-heap.mk)
$(call inherit-product-if-exists, vendor/cm/config/common_full_phone.mk)
$(call inherit-product, vendor/moto/shadow/shadow-vendor.mk)

PRODUCT_NAME := cm_shadow
PRODUCT_DEVICE := shadow
