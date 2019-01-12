#!/bin/bash

#pHAT DAC (removes default audio)
if [[ "$PHAT_DAC" = "1" ]]; then
  rmmod snd_bcm2835 || true
fi

# Handle Kodi userdata folder
mkdir /data/kodi >/dev/null 2>&1 || true && rm -rf /root/.kodi && ln -s /data/kodi /root/.kodi

# Copy advancedsettings.xml to proper folder.
mkdir /data/kodi/userdata >/dev/null 2>&1 || true && cp /usr/src/app/advancedsettings.xml /data/kodi/userdata

while true; do
    DBUS_SYSTEM_BUS_ADDRESS=unix:path=/host/run/dbus/system_bus_socket /usr/bin/kodi-standalone
done
