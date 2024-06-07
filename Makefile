.PHONY: all vm

all: build/test.bin

build/startup.o: src/startup.s
	arm-none-eabi-as -mcpu=arm926ej-s -g $< -o $@

build/test.o: src/test.c
	arm-none-eabi-gcc -c -mcpu=arm926ej-s -g $< -o $@

build/test.elf: src/test.ld build/test.o build/startup.o
	arm-none-eabi-ld -T $+ -o $@

build/test.bin: build/test.elf
	arm-none-eabi-objcopy -O binary $^ $@

vm: build/test.bin
	qemu-system-arm -M versatilepb -m 128M -nographic -kernel build/test.bin
