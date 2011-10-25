#!/system/bin/sh
##################################################################################
#
# File          clrbootcount.sh
# Description	Clear the bootcount variable to 0 on successful boot
#
## 
# Run potential hook first.
/data/boot_complete_hook.sh
# Zero the boot count
dd if=/dev/zero of=/rom/devconf/BootCnt bs=1 count=4
