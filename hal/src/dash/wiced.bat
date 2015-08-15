set WICED=r:\sdk\spark\core\WICED\WICED-SDK-3.1.1\WICED-SDK

set OPTS=

pushd %WICED%


if not "%1" == "clean" goto doneclean
.\make clean
:doneclean
.\make demo.soft_ap-BCM943362WCD4-ThreadX-NetX-SDIO %OPTS%
.\make demo.soft_ap-BCM943362WCD4-FreeRTOS-LwIP-SDIO %OPTS%

popd

@REM update headers
call update.bat . %WICED%


@REM update platform libraries (any RTOS)
call update.bat lib %WICED%\build\demo_soft_ap-BCM943362WCD4-ThreadX-NetX-SDIO\libraries
call update.bat lib\FreeRTOS %WICED%\build\demo_soft_ap-BCM943362WCD4-FreeRTOS-LwIP-SDIO\libraries


