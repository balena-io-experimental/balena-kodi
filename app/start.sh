#!/bin/bash

#pHAT DAC (removes default audio)
if [[ "$PHAT_DAC" = "1" ]]; then
  rmmod snd_bcm2835 || true
fi

# Handle Kodi userdata folder
mkdir /data/kodi >/dev/null 2>&1 || true && rm -rf /root/.kodi && ln -s /data/kodi /root/.kodi

while true; do
    DBUS_SYSTEM_BUS_ADDRESS=unix:path=/host_run/dbus/system_bus_socket /usr/bin/kodi-standalone
done
