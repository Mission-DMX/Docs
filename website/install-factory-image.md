---
layout: page
title: Install Mission-DMX OS from the factory image
permalink: /install-factory-image.html
---

# Install Mission-DMX OS from the factory image

The Mission-DMX OS factory image is a complete, bootable disk image of
the Mission-DMX console operating system. Flashing it onto an empty SSD
produces a device that boots directly into the console and
auto-updates itself from `https://mission-dmx.org/downloads/os-updates/`
every six hours.


## Prerequisites

- **Target SSD:** at least **64 GiB** (128 MiB ESP + 2 × 16 GiB rootfs +
  userdata tail). SSDs smaller than this will fail during first boot
  when the firstboot module tries to create the userdata partition.
- **Target machine:** UEFI firmware (not legacy BIOS). Secure Boot is
  not required and should typically be disabled for Mission-DMX
  consoles.
- **Flashing host:** a Linux (or WSL) system with `xz`, root privileges,
  and one of:
  - [`bmaptool`](https://github.com/intel/bmap-tools) (recommended —
    faster, skips unallocated regions).
  - `dd` (fallback — works everywhere).

## 1. Download

Grab the factory image and its sparse map:

```sh
wget https://mission-dmx.org/downloads/mdmx-os-factory.wic.xz
wget https://mission-dmx.org/downloads/mdmx-os-factory.wic.bmap
```

The compressed image is a few hundred MiB; the uncompressed footprint on
disk is ~32 GiB plus whatever userdata space the target SSD provides.

## 2. Identify the target device

> **Warning:** the next step overwrites the entire target device. There
> is no undo. Double-check the device name before continuing.

```sh
lsblk
```

Pick the SSD you want to flash. In the examples below it is `/dev/sdX` —
replace that with the actual device node every time it appears.

## 3. Flash the image

### Recommended: `bmaptool`

```sh
sudo bmaptool copy --bmap mdmx-os-factory.wic.bmap mdmx-os-factory.wic.xz /dev/sdX
sudo sync
```

`bmaptool` handles decompression on the fly and only writes blocks that
actually contain data, so this is significantly faster than `dd`.

### Fallback: `dd`

```sh
xz -dc mdmx-os-factory.wic.xz | sudo dd of=/dev/sdX bs=4M status=progress conv=fsync
sudo sync
```

## 4. First boot

1. Move the SSD into the target machine.
2. Enter the UEFI firmware setup and confirm the machine is set to boot
   in **UEFI mode** (CSM / legacy BIOS off). Boot order should list the
   SSD first.
3. On first power-up, GRUB flashes past its menu and selects slot A
   automatically. The initramfs then creates the userdata partition
   from the remaining disk space and seeds `/home`, `/var`, and `/root`
   from the rootfs skeleton. The whole first-boot sequence typically
   takes under a minute, after which the console desktop (sway) comes
   up.

## Troubleshooting

| Symptom | Likely cause |
|---|---|
| GRUB menu waits for user input instead of auto-booting | `mdmx-bootcheck.service` did not run on a previous boot (either slot A failed before reaching graphical.target, or the service was disabled). Boot the other slot and open an issue. |
| First boot halts with `No space left on device` during userdata creation | The target SSD is smaller than the 32 GiB rootfs footprint + the minimum userdata tail. Use a larger SSD. |
| OTA updater reports `up to date` after a long time with no updates | The device's `/etc/mdmx-build-timestamp` is already at or above the manifest's newest bundle timestamp. See the "Publishing Mission-DMX OS Updates" document for the manifest format and the server-side troubleshooting cheatsheet. |
| OTA updater reports `CMS verify failed` | The device's keyring does not contain the trust bundle used to sign the published updates. Re-flash from a current factory image to pick up the matching keyring. |
