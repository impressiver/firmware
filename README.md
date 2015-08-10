Particle Firmware for Amazon Dash button
========================================

Work in progress - details will be added as I figure out what I'm doing.

~~~~~

## Amazon Dash Hardware
-  STM32F205RG6 MCU
  -  Cortex M3
  -  120MHz
  -  1M Flash Memory
  -  128KB RAM
-  Broadcom BCM943362WCD4
  -  IEEE 802.11 b/g/n
  -  MAC/Baseband/Radio + SDIO
-  ADMP441 Digital Mic (I2S)
-  SST25VF016B SPI Flash (16Mbit)


## SWD Pinout

STM32F4*          Dash               J-link
------------      ----               ------
1 NC (VDD?)         C7 3V3                1 VTref
2 JTCK/SWCLK      PA14 JTCK/SWCLK         9 JTCK/SWCLK
3 GND              TM2 GND             4-12 GND
4 JTMS/SWDIO      PA13 JTMS/SWDIO         7 JTMS/SWDIO
5 JTRST/NRST       C30 RESET             15 RESET
6 JTDO/SWO         PB3 JTDO/TRACESWO     13 JTDO/SWO

*STlink/V2 via STM32F4207 Discovery board

~~~~~

This is forked from the main source code repository of the Particle firmware libraries.

# Getting Started

To get started building firmware locally, see [Getting Started](docs/gettingstarted.md).


# Resources

- [Latest Release - 0.4.3](http://github.com/spark/firmware/releases/tag/0.4.3-rc2)
- [Changelog](CHANGELOG.md)


## Build System

- [Requirements/Dependencies](docs/dependencies.md)

## Application Firmware Development

- [Debugging support](docs/debugging.md)
- [make command syntax](docs/build.md)
- [Firmware API](http://docs.particle.io/photon/firmware/)

## System Firmware Development

- [System Flags](system/system-flags.md)
- [Continuous Integration](ci/README.md)
- [Module Descriptor linking and retrieval](dynalib/src/readme.md)
- [Photon SoftAP Protocol](hal/src/photon/soft-ap.md)
- [WiFi Tester Firmware](user/applications/wifitester/readme.md)
- [Testing](user/tests/readme.md)
- [API Changes Checklist](http://github.com/spark/firmware/wiki/Firmware-API-Changes-Checklist)
- [Firmware Release Checklist](http://github.com/spark/firmware/wiki/Firmware-Release-Checklist)
- [System describe message](https://github.com/spark/firmware/wiki/Module-descriptor-format)
- [build test suite](build/test/readme.md)

### Modules

- Bootloader [overview](bootloader/README.md) and [internals](bootloader/documentation.md)
- [Cloud Communications](communication/README.md)

### Platforms

- [Virtual Device](hal/src/gcc/readme.md)
- [Starting a New Platform Hardware Abstraction Layer](hal/src/newhal/readme.md)
- [Installing the USB Driver on Windows](misc/driver/windows/readme.md)




### CREDITS AND ATTRIBUTIONS

The firmware uses the GNU GCC toolchain for ARM Cortex-M processors, ARM's CMSIS libraries, STM32 standard peripheral libraries and Arduino's implementation of Wiring.

On the Core: TI's CC3000 host driver libraries,
On the photon: Broadcom's WICED WiFi SDK.

### LICENSE

Unless stated elsewhere, file headers or otherwise, all files herein are licensed under an LGPLv3 license. For more information, please read the LICENSE file.

### CONTRIBUTE

Want to contribute to the Particle firmware project? Follow [this link](http://spark.github.io/#contributions) to find out how.

### CONNECT

Having problems or have awesome suggestions? Connect with us [here.](https://community.particle.io/)
