# Doze
PRODUCT_PACKAGES += MeizuDoze

# Ion
PRODUCT_PACKAGES += libion

PRODUCT_COPY_FILES += \
$(VND_MTK_PATH)/prebuilts/libstlport/lib/libstlport.so:system/lib/libstlport.so \
$(VND_MTK_PATH)/prebuilts/libstlport/lib64/libstlport.so:system/lib64/libstlport.so \
# Gps
PRODUCT_PACKAGES += \
    libcurl \
    libnl_2

# USB
PRODUCT_PACKAGES += com.android.future.usb.accessory

# Wifi mtk wpa_supp lib
PRODUCT_PACKAGES += lib_driver_cmd_mt66xx

# Wifi tools
PRODUCT_PACKAGES += \
    libwpa_client \
    hostapd \
    wpa_supplicant \
    wifilogd \
    wificond
