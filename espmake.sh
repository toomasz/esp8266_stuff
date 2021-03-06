#!/bin/sh

#working dir is passed as first argument
WORKING_DIR=$1
cd $WORKING_DIR

# location of toolchain
TOOLCHAIN=c:/Projects/esp8266/xtensa-lx106-elf/bin
# location esp8266 sdk
SDK=c:/Projects/esp8266/esp_iot_sdk_v0.9.3
INCDIR='-Iinclude'
#path to esptool in cygwin environment
ESPTOOL=/bin/esptool


make XTENSA_TOOLS_ROOT=$TOOLCHAIN XTENSA_TOOCHAIN=$TOOLCHAIN XTENSA_TOOCHAIN=$TOOLCHAIN SDK_BASE=$SDK EXTRA_INCDIR=$INCDIR ESPTOOL=$ESPTOOL $2 $3 $4 $5 $6 $7
