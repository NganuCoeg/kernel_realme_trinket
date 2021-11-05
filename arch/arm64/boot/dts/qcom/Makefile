ifeq ($(CONFIG_BUILD_ARM64_DT_OVERLAY),y)	
	dtbo-$(CONFIG_ARCH_TRINKET) += trinket-idp-overlay-19743.dtbo
	trinket-idp-overlay-19743.dtbo-base := trinket-19743.dtb
	dtbo-$(CONFIG_ARCH_TRINKET) += trinket-idp-overlay-19632.dtbo
	trinket-idp-overlay-19632.dtbo-base := trinket-19632.dtb
	dtbo-$(CONFIG_ARCH_TRINKET) += trinket-idp-overlay-19631.dtbo
	trinket-idp-overlay-19631.dtbo-base := trinket-19631.dtb
else
	dtb-$(CONFIG_ARCH_TRINKET)	+= trinket-idp.dtb
	dtb-$(CONFIG_ARCH_TRINKET)	+= trinket-idp-19632.dtb
	dtb-$(CONFIG_ARCH_TRINKET)	+= trinket-idp-19743.dtb
endif

always		:= $(dtb-y)
subdir-y	:= $(dts-dirs)
clean-files	:= *.dtb *.dtbo

ifeq ($(CONFIG_BUILD_ARM64_DT_OVERLAY),y)
	dtbo-$(CONFIG_ARCH_TRINKET) += \
		trinket-rumi-overlay.dtbo \
		trinket-idp-overlay.dtbo \
		trinket-qrd-overlay.dtbo \
		trinket-external-codec-idp-overlay.dtbo \
		trinket-usbc-external-codec-idp-overlay.dtbo \
		trinket-usbc-idp-overlay.dtbo \
		trinket-dp-idp-overlay.dtbo \
		qcm6125-iot-idp-overlay.dtbo \
		qcs6125-iot-idp-overlay.dtbo \
		qcm6125-iot-external-codec-idp-overlay.dtbo \
		qcs6125-iot-external-codec-idp-overlay.dtbo \
		qcm6125-iot-usbc-external-codec-idp-overlay.dtbo \
		qcs6125-iot-usbc-external-codec-idp-overlay.dtbo \
		qcm6125-iot-usbc-idp-overlay.dtbo \
		qcs6125-iot-usbc-idp-overlay.dtbo \
		qcm6125-iot-dp-idp-overlay.dtbo \
		qcs6125-iot-dp-idp-overlay.dtbo

trinket-rumi-overlay.dtbo-base := trinket.dtb
trinket-idp-overlay.dtbo-base := trinket.dtb
trinket-qrd-overlay.dtbo-base := trinket.dtb
trinket-external-codec-idp-overlay.dtbo-base := trinket.dtb
trinket-usbc-external-codec-idp-overlay.dtbo-base := trinket.dtb
trinket-usbc-idp-overlay.dtbo-base := trinket.dtb
trinket-dp-idp-overlay.dtbo-base := trinket.dtb
qcm6125-iot-idp-overlay.dtbo-base := qcm6125.dtb
qcs6125-iot-idp-overlay.dtbo-base := qcs6125.dtb
qcm6125-iot-external-codec-idp-overlay.dtbo-base := qcm6125.dtb
qcs6125-iot-external-codec-idp-overlay.dtbo-base := qcs6125.dtb
qcm6125-iot-usbc-external-codec-idp-overlay.dtbo-base := qcm6125.dtb
qcs6125-iot-usbc-external-codec-idp-overlay.dtbo-base := qcs6125.dtb
qcm6125-iot-usbc-idp-overlay.dtbo-base := qcm6125.dtb
qcs6125-iot-usbc-idp-overlay.dtbo-base := qcs6125.dtb
qcm6125-iot-dp-idp-overlay.dtbo-base := qcm6125.dtb
qcs6125-iot-dp-idp-overlay.dtbo-base := qcs6125.dtb
else
dtb-$(CONFIG_ARCH_TRINKET)	+= trinket-rumi.dtb \
	trinket-idp.dtb \
	trinket-qrd.dtb \
	trinket-external-codec-idp.dtb \
	trinket-usbc-external-codec-idp.dtb \
	trinket-usbc-idp.dtb \
	trinket-dp-idp.dtb \
	qcm6125-iot-idp.dtb \
	qcs6125-iot-idp.dtb \
	qcm6125-iot-external-codec-idp.dtb \
	qcs6125-iot-external-codec-idp.dtb \
	qcm6125-iot-usbc-external-codec-idp.dtb \
	qcs6125-iot-usbc-external-codec-idp.dtb \
	qcm6125-iot-usbc-idp.dtb \
	qcs6125-iot-usbc-idp.dtb \
	qcm6125-iot-dp-idp.dtb \
	qcs6125-iot-dp-idp.dtb
endif

ifeq ($(CONFIG_BUILD_ARM64_DT_OVERLAY),y)
	dtbo-$(CONFIG_ARCH_ATOLL) += \
		atoll-idp-overlay.dtbo\
		atoll-atp-overlay.dtbo\
		atoll-qrd-overlay.dtbo\
		atoll-wcd937x-idp-overlay.dtbo\
		atoll-usbc-idp-overlay.dtbo\
		atoll-rumi-overlay.dtbo\
		atollp-idp-overlay.dtbo\
		atollp-atp-overlay.dtbo\
		atollp-qrd-overlay.dtbo\
		atoll-ab-idp-overlay.dtbo\
		atoll-ab-atp-overlay.dtbo\
		atoll-ab-qrd-overlay.dtbo

atoll-idp-overlay.dtbo-base := atoll.dtb
atoll-atp-overlay.dtbo-base := atoll.dtb
atoll-qrd-overlay.dtbo-base := atoll.dtb
atoll-rumi-overlay.dtbo-base := atoll.dtb
atoll-wcd937x-idp-overlay.dtbo-base := atoll.dtb
atoll-usbc-idp-overlay.dtbo-base := atoll.dtb
atollp-idp-overlay.dtbo-base := atollp.dtb
atollp-atp-overlay.dtbo-base := atollp.dtb
atollp-qrd-overlay.dtbo-base := atollp.dtb
atoll-ab-idp-overlay.dtbo-base := atoll-ab.dtb
atoll-ab-atp-overlay.dtbo-base := atoll-ab.dtb
atoll-ab-qrd-overlay.dtbo-base := atoll-ab.dtb
else
dtb-$(CONFIG_ARCH_ATOLL)	+= atoll-idp.dtb\
	atoll-atp.dtb\
	atoll-qrd.dtb\
	atoll-wcd937x-idp.dtb\
	atoll-usbc-idp.dtb\
	atoll-rumi.dtb\
	atollp-idp.dtb\
	atollp-atp.dtb\
	atollp-qrd.dtb\
	atoll-ab-idp.dtb\
	atoll-ab-atp.dtb\
	atoll-ab-qrd.dtb
endif

dtb-$(CONFIG_ARCH_SDXPRAIRIE) += sdxprairie-rumi.dtb \
	sdxprairie-cdp.dtb \
	sdxprairie-cdp-256.dtb \
	sdxprairie-cdp-cpe.dtb \
	sdxprairie-cdp-v1.1-cpe.dtb \
	sdxprairie-dsda-cdp.dtb \
	sdxprairie-v2-cdp.dtb \
	sdxprairie-mtp.dtb \
	sdxprairie-mtp-256.dtb \
	sdxprairie-mtp-aqc.dtb \
	sdxprairie-mtp-cpe.dtb \
	sdxprairie-mtp-le-cpe.dtb \
	sdxprairie-mtp-v1.1.dtb \
	sdxprairie-mtp-v1.1-cpe.dtb \
	sdxprairie-dsda-mtp.dtb \
	sdxprairie-pcie-ep-mtp.dtb \
	sdxprairie-v2-mtp.dtb \
	sdxprairie-v2-mtp-cpe.dtb \
	sdxprairie-v2-mtp-le-cpe.dtb \
	sdxprairie-v2-mtp-v1.1.dtb \
	sdxprairie-v2-mtp-v1.1-cpe.dtb \
	sdxprairie-v2-pcie-ep-mtp.dtb \
	sa515m-ccard.dtb \
	sa515m-ccard-pcie-ep.dtb \
	sa515m-ccard-usb-ep.dtb
