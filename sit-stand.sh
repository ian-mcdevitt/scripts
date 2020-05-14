#!/bin/bash
export DISPLAY=:0
eval "export $(egrep -z DBUS_SESSION_BUS_ADDRESS /proc/$(pgrep -u $LOGNAME gnome-session)/environ)";

NOTIFY="/usr/bin/notify-send --urgency=critical --expire-time=15000 --icon=important"

`$NOTIFY "Stand and sit timer" "Time to $1 now!"`
paplay /usr/share/sounds/gnome/default/alerts/sonar.ogg
sleep 1
paplay /usr/share/sounds/gnome/default/alerts/sonar.ogg
sleep 1
paplay /usr/share/sounds/gnome/default/alerts/sonar.ogg
