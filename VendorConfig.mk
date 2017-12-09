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

# GC tweak
PRODUCT_TAGS += dalvik.gc.type-precise
