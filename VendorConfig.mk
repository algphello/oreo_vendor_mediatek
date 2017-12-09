VND_MTK_PATH := vendor/mediatek

TARGET_SPECIFIC_HEADER_PATH := $(VND_MTK_PATH)/include

# Disable dex pre-opt
WITH_DEXPREOPT := false

# Seccomp policy
PRODUCT_COPY_FILES += \
    $(VND_MTK_PATH)/seccomp_policy/mediacodec.policy:system/vendor/etc/seccomp_policy/mediacodec.policy \
    $(VND_MTK_PATH)/seccomp_policy/mediaextractor.policy:system/vendor/etc/seccomp_policy/mediaextractor.policy

# Google codecs
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:system/etc/media_codecs_google_video_le.xml

# GPS
PRODUCT_COPY_FILES += \
    $(VND_MTK_PATH)/configs/gps/slp_conf:system/etc/slp_conf \
    $(VND_MTK_PATH)/configs/gps/gps.conf:system/etc/gps.conf \
    $(VND_MTK_PATH)/configs/gps/agps_profiles_conf2.xml:system/etc/agps_profiles_conf2.xml

# Bluetooth
PRODUCT_COPY_FILES += \
    $(VND_MTK_PATH)/configs/bluetooth/auto_pair_devlist.conf:system/etc/bluetooth/auto_pair_devlist.conf \
    $(VND_MTK_PATH)/configs/bluetooth/bt_stack.conf.debug:system/etc/bluetooth/bt_stack.conf.debug \
    $(VND_MTK_PATH)/configs/bluetooth/bt_did.conf:system/etc/bluetooth/bt_did.conf \
    $(VND_MTK_PATH)/configs/bluetooth/bt_stack.conf:system/etc/bluetooth/bt_stack.conf \
    $(VND_MTK_PATH)/configs/bluetooth/bt_stack.conf.sqc:system/etc/bluetooth/bt_stack.conf.sqc

# GC tweak
PRODUCT_TAGS += dalvik.gc.type-precise
