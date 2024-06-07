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
