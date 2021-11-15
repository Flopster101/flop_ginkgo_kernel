debugfs-objs	:= inode.o file.o

ifeq ($(CONFIG_ANDROID),y)
ccflags-y	:= -DCONFIG_DEBUG_FS
endif

obj-$(CONFIG_ANDROID)	+= debugfs.o
