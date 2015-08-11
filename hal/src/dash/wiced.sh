WICED=/spark/dash-wiced

OPTS=

function update()
{
   rsync -avz --update --existing $2/ $1
}

pushd $WICED

if [ "$1" == "clean" ]; then
  ./make clean
fi

./make demo.soft_ap-BCM943362WCD4-FreeRTOS-LwIP-SDIO $OPTS

popd

# update headers
update . $WICED


# update platform libraries (any RTOS)
update lib $WICED/build/demo_soft_ap-BCM943362WCD4-FreeRTOS-LwIP-SDIO/libraries
update lib/FreeRTOS $WICED/build/demo_soft_ap-BCM943362WCD4-FreeRTOS-LwIP-SDIO/libraries
