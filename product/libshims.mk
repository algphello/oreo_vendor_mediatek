## Mtk symbols & shim
ifeq ($(LIBSHIM_XLOG_SYMBOLS),true)
PRODUCT_PACKAGES += libshim_xlog
LINKER_FORCED_SHIM_LIBS := /system/lib/liblog.so|libshim_xlog.so:/system/lib64/liblog.so|libshim_xlog.so
endif
ifeq ($(LIBSHIM_SND_SYMBOLS),true)
PRODUCT_PACKAGES += libshim_snd
LINKER_FORCED_SHIM_LIBS := $(LINKER_FORCED_SHIM_LIBS):/system/lib/hw/audio.primary.$(TARGET_BOARD_PLATFORM).so|libshim_snd.so
endif
ifeq ($(LIBSHIM_UI_SYMBOLS),true)
PRODUCT_PACKAGES += libshim_ui
LINKER_FORCED_SHIM_LIBS := $(LINKER_FORCED_SHIM_LIBS):/system/lib/libui.so|libshim_ui.so:/system/lib64/libui.so|libshim_ui.so
endif
ifeq ($(LIBSHIM_GUI_SYMBOLS),true)
PRODUCT_PACKAGES += libshim_gui
LINKER_FORCED_SHIM_LIBS := $(LINKER_FORCED_SHIM_LIBS):/system/lib/libgui.so|libshim_gui.so:/system/lib64/libgui.so|libshim_gui.so
endif
ifeq ($(LIBSHIM_OMX_SYMBOLS),true)
PRODUCT_PACKAGES += libshim_omx
LINKER_FORCED_SHIM_LIBS := $(LINKER_FORCED_SHIM_LIBS):/vendor/lib/libMtkOmxVdec.so|libshim_omx.so
endif
ifeq ($(LIBSHIM_AGPS_SYMBOLS),true)
PRODUCT_PACKAGES += libshim_agps
LINKER_FORCED_SHIM_LIBS := $(LINKER_FORCED_SHIM_LIBS):/vendor/bin/mtk_agpsd|libshim_agps.so
endif
