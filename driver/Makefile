KERNEL ?= $(shell uname -r)
KERNELDIR ?= /lib/modules/$(KERNEL)/build

.PHONY: default
default: modules

# -m : build as module
obj-m = usb-skeleton.o

.PHONY: modules
modules:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) modules

.PHONY: modules_install
modules_install:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) modules_install

.PHONY: install
install: modules_install
