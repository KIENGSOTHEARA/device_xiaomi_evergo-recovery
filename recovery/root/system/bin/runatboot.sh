#!/system/bin/sh

# Load touch drivers/services if they didn't load properly
#
# Author: chickendrop89

DRIVERS="panel_event_notifier xiaomi_touch goodix_core focaltech_touch"
MODULES_DIR="/vendor/lib/modules"

for d in $DRIVERS; do
    lsmod | grep -q "^$d" && continue
    path=$(find "$MODULES_DIR" -name "$d.ko" | head -n 1)
    if [ -f "$path" ]; 
        then 
            insmod "$path"
            echo "Force inserted module: $d" >> /tmp/recovery.log
    fi
done

SVC_STATUS=$(getprop init.svc.touchfeature-service)

if [ "$SVC_STATUS" != "running" ]; 
    then 
        setprop ctl.start touchfeature-service
        echo "Forced touchscreen service start" >> /tmp/recovery.log
fi
