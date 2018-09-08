always		:= $(dtb-y)
subdir-y	:= $(dts-dirs)

$(obj)/%.dtbo:$(src)/../../../../arm64/boot/dts/xiaomi/%.dts FORCE
	$(call if_changed_dep,dtc)
	$(call if_changed,dtbo_verify)

dtbs: $(addprefix $(obj)/,$(dtb-y)) $(addprefix $(obj)/,$(dtbo-y))
clean-files	:= *.dtb *.dtbo
