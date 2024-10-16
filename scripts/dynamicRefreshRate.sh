#!/bin/bash

USER=$(who | awk '{print $1}' | head -n 1)

# Export display info for the user session
export DISPLAY=:0
export XAUTHORITY=/home/yourusername/.Xauthority
export DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/$(id -u $USER)/bus"

# Debounce mechanism
LOCKFILE="/tmp/power_change_handler.lock"
LOCKFILE_TIMEOUT=5  # 5 seconds

# Exit if the lockfile is less than LOCKFILE_TIMEOUT seconds old
if [ -f "$LOCKFILE" ] && [ $(($(date +%s) - $(stat -c %Y "$LOCKFILE"))) -lt "$LOCKFILE_TIMEOUT" ]; then
    exit 0
fi

# Create or update the lockfile
touch "$LOCKFILE"

# Function to send notification
notificationSend () {
  su $USER -c "notify-send 'Display Refresh Rate' '$1' -i display"
}

# Check if we're on battery power
if on_ac=$(cat /sys/class/power_supply/ACAD/online)
then
    if [ "$on_ac" = "1" ]; then
        su $USER -c "gnome-monitor-config set -LpM eDP-1 -s 1.0 -m 1920x1080@144.001"
        notificationSend "Switched to 144Hz (AC Power Mode)"
    else
        su $USER -c "gnome-monitor-config set -LpM eDP-1 -s 1.0 -m 1920x1080@60.001"
        notificationSend "Switched to 60Hz (Battery Power Mode)"
    fi
fi
