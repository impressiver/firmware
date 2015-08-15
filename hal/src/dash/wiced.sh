WICED=../../../../dash-wiced

# $ cd firmware/hal/src/dash
# $ ./wiced.sh

OPTS=

function update()
{
   rsync -avz --update --existing $2/ $1
}

pushd $WICED

if [ "$1" == "clean" ]; then
  ./make clean
fi

./make snip.scan-BCM943362WCD4-FreeRTOS-LwIP-SDIO $OPTS
./make snip.apsta-BCM943362WCD4-FreeRTOS-LwIP-SDIO $OPTS

popd

# update headers
update . $WICED


# update platform libraries (any RTOS)
update lib $WICED/build/snip_scan-BCM943362WCD4-FreeRTOS-LwIP-SDIO/libraries
update lib/FreeRTOS $WICED/build/snip_scan-BCM943362WCD4-FreeRTOS-LwIP-SDIO/libraries

update lib $WICED/build/snip_apsta-BCM943362WCD4-FreeRTOS-LwIP-SDIO/libraries
update lib/FreeRTOS $WICED/build/snip_apsta-BCM943362WCD4-FreeRTOS-LwIP-SDIO/libraries
