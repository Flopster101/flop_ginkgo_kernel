ifeq ($(CONFIG_BUILD_ARM64_DT_OVERLAY),y)

dtbo-$(CONFIG_MACH_XIAOMI_C3J) += \
    ginkgo-trinket-overlay.dtbo
ginkgo-trinket-overlay.dtbo-base := qcom-base/trinket.dtb

endif

always		:= $(dtb-y)
subdir-y	:= $(dts-dirs)

$(obj)/%.dtbo:$(src)/../../../../arm64/boot/dts/xiaomi/%.dts FORCE
	$(call if_changed_dep,dtc)
	$(call if_changed,dtbo_verify)

dtbs: $(addprefix $(obj)/,$(dtb-y)) $(addprefix $(obj)/,$(dtbo-y))
clean-files	:= *.dtb *.dtbo
