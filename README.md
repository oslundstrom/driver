# Experimenting with C bare metal drivers

This repo will contain some experimentation with bare metal drivers, using QEMU.

[This]<https://github.com/jasonblog/note/blob/master/arm_emulation/hello_world_for_bare_metal_arm_using_qemu.md> is some inspiration.

# Usage

First build the boot binary

```bash
make
```

Then start the virtual machine, exit the virtual machine with `Ctrl-A x`

```bash
make vm
```

# Serial communication, guest to host

I will start by setting up connection between a chardev and a qemu serial device.

Reference qemu/hw/arm/versatilepb.c to find more UART memory locations.

# Idea: USB Fan controller

A USB connected MCU (RP2040 or ESP32) that runs some code controlling my fan(s) and exposing some metrics and control points over USB to a kernel driver.

```
cat /dev/fan
```
