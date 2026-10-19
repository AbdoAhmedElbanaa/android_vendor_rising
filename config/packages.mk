PRODUCT_SOONG_NAMESPACES += \
    vendor/rising/packages

# /system_ext packages
PRODUCT_PACKAGES += \
    androidx.window.extensions \
    androidx.window.sidecar

PRODUCT_PACKAGES += \
    BatteryStatsViewer \
    OmniStyle \
    OmniJaws \
    Updater \
    GameSpace \
    LMOFreeform \
    LMOFreeformSidebar \
    AxQuickLook \
    AxSandbox \
    AppDataBackup

ifneq ($(WITH_GMS),true)
PRODUCT_PACKAGES += \
    LatinIME
endif

-include packages/apps/AxionFx/config.mk

# Dual Audio
ifeq ($(filter true 1,$(TARGET_ENABLE_DUAL_AUDIO) $(WITH_DUAL_AUDIO)),true)
PRODUCT_PACKAGES += \
    DualAudio
endif

# Clarifae AI Audio Clarity
ifeq ($(filter true 1,$(TARGET_ENABLE_CLARIFAE) $(WITH_CLARIFAE)),true)
PRODUCT_PACKAGES += \
    Clarifae
endif
