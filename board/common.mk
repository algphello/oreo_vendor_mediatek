# Disable dex pre-opt
WITH_DEXPREOPT := false

# GC tweak
PRODUCT_TAGS += dalvik.gc.type-precise

# SW Gatekeeper
BOARD_USE_SOFT_GATEKEEPER := true

# Fun with flags
BOARD_USES_MTK_HARDWARE := true

# Camera flags
TARGET_USES_NON_TREBLE_CAMERA := true
