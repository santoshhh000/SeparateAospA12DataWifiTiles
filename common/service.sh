#!/system/bin/sh
# Do NOT assume where your module will be located.
# ALWAYS use $MODDIR if you need to know where this script
# and module is placed.
# This will make sure your module will still work
# if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed in late_start service mode
sleep 40

su -c  cmd settings put global settings_provider_model false
settings put global settings_provider_model false
su -c  cmd settings put secure sysui_qs_tiles “cell,wifi,$(settings get secure sysui_qs_tiles)”
settings put secure sysui_qs_tiles “cell,wifi,$(settings get secure sysui_qs_tiles)”

touch /data/adb/modules/separateWifiAndDataA12/remove
