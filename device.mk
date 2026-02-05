# Dynamic Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_RETROFIT_DYNAMIC_PARTITIONS := true

PRODUCT_PROPERTY_OVERRIDES += \
	ro.boot.dynamic_partitions=true \
	ro.boot.dynamic_partitions_retrofit=true

PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-service

PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-impl \
    android.hardware.gatekeeper@1.0-service \
    android.hardware.keymaster@3.0-impl \
    android.hardware.keymaster@3.0-service \
    libion

# Display
PRODUCT_PACKAGES += \
    vendor.display.config@1.0 \
    vendor.display.config@1.0.vendor

# Fastbootd
TW_INCLUDE_FASTBOOTD := true
PRODUCT_PACKAGES += \
    fastbootd

PRODUCT_PROPERTY_OVERRIDES += \
    ro.fastbootd.available=true

# Qcom decryption
PRODUCT_PACKAGES += \
    libcryptfs_hw \
    qcom_decrypt \
    qcom_decrypt_fbe

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)
