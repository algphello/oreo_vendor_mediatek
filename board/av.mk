# Google codecs
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:vendor/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:vendor/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:vendor/etc/media_codecs_google_video_le.xml

# Audio
PRODUCT_COPY_FILES += $(VND_MTK_PATH)/configs/audio/audio_effects.xml:system/etc/audio_effects.xml
