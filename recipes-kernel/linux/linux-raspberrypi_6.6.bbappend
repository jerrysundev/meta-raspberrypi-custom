FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI:remove:raspberrypi4-64-custom = "git://github.com/raspberrypi/linux.git;name=machine;branch=${LINUX_RPI_BRANCH};protocol=https"
SRC_URI:prepend:raspberrypi4-64-custom = "git://github.com/jerrysundev/linux-raspberrypi-custom.git;name=machine;branch=${LINUX_RPI_BRANCH};protocol=https"
SRC_URI:append:raspberrypi4-64-custom = " file://0001-Print-message-on-Raspberry-Pi-kernel-boot.patch"


LINUX_VERSION:raspberrypi4-64-custom ?= "6.6.47"
LINUX_RPI_BRANCH:raspberrypi4-64-custom ?= "rpi-custom-camera-6.6.y"
SRCREV_machine:raspberrypi4-64-custom = "a2c01decf36899c2bae26e59a98383a65f501301"

KBUILD_DEFCONFIG:raspberrypi4-64-custom ?= "bcm2711_custom_defconfig"


# KERNEL_DEFCONFIG="bcm2709_defconfig"
