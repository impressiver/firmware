# ensure bytes are treated as bytes by tr or /xFF is output as a UTF-8 byte pair
export LC_CTYPE=C

# $ cd firmware/hal/src/dash
# $ ./make_combined.sh PLATFORM_ID=99 clean all

gnumake -f wiced_test_mfg_combined.mk CORE=../../../.. WICED_SDK=../../../../dash-wiced  $*
#gnumake -f wiced_test_mfg_combined.mk CORE=~/src/git/spark  $*
