#!/bin/bash

#pHAT DAC (removes default audio)
if [[ "$PHAT_DAC" = "1" ]]; then
  rmmod snd_bcm2835 || true
fi

# Handle Kodi userdata folder
mkdir /data/kodi >/dev/null 2>&1 || true && rm -rf /root/.kodi && ln -s /data/kodi /root/.kodi

# env variable $REMOTE_CONTROL can be used to enable remote control 
# see https://kodi.wiki/view/Web_interface
if [[ "$REMOTE_CONTROL" = "1" ]]; then
  # Copy advancedsettings.xml to proper folder.
  mkdir /data/kodi/userdata >/dev/null 2>&1 || true && cp /usr/src/app/advancedsettings.xml /data/kodi/userdata
else
  # Remove advancedsettings.xml 
  mkdir /data/kodi/userdata >/dev/null 2>&1 || true && rm -rf /data/kodi/userdata/advancedsettings.xml
if

while true; do
    DBUS_SYSTEM_BUS_ADDRESS=unix:path=/host/run/dbus/system_bus_socket /usr/bin/kodi-standalone
done
