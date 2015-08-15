#!/usr/bin/env bash

# $ cd firmware/hal/src/dash
# $ ./wiced.sh

WICED=../../../../dash-wiced

OPTS=

SNIP=snip.apsta
NET=BCM943362WCD4
RTOS=FreeRTOS
IP=LwIP

function update()
{
  echo -e "\nUpdating existing files in ${1} with ${2}"
  rsync -avz --update --existing $2/ $1
}

function sync()
{
  echo -e "\nSyncing ${1} with ${2}"
  rsync -avz --update $2/ $1
}

# update platform
update platforms/${NET} $WICED/platforms/${NET}

pushd $WICED

if [ "$1" == "clean" ]; then
  ./make clean
fi

#./make snip.scan-${NET}-${RTOS}-${IP}-SDIO $OPTS
./make ${SNIP}-${NET}-${RTOS}-${IP}-SDIO $OPTS

popd

# update headers
update ./include $WICED/include
update ./libraries $WICED/libraries
update ./platforms $WICED/platforms
update ./wiced $WICED/wiced

# update platform libraries (any RTOS)
update lib $WICED/build/${SNIP//./_}-${NET}-${RTOS}-${IP}-SDIO/libraries
update lib/${RTOS} $WICED/build/${SNIP//./_}-${NET}-${RTOS}-${IP}-SDIO/libraries

# update lib $WICED/build/snip_apsta-${NET}-${RTOS}-${IP}-SDIO/libraries
# update lib/${RTOS} $WICED/build/snip_apsta-${NET}-${RTOS}-${IP}-SDIO/libraries
