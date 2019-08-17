# balena-kodi

A boilerplate for getting up and running with [Kodi](https://kodi.tv/) (v18.2 Git:20190428-a94ccc8ba5)
open source home theatre on your balena-enabled [Raspberry Pi](https://www.raspberrypi.org/).

Also the nessary things are installed to watch amazon prime movies and series.  For this you need an amazon prime account !

Moreover it should be relatively easy to extend this repository so that it also supports netflix (for this have a look at https://www.makeuseof.com/tag/netflix-amazon-video-plex-raspberry-pi/ )

## Evnvironment variables

Set these environment variables in the application's dashboard on balena.

### Required Device Configuration

Set this in the Fleet or Device Configuration panel.

| Name                          | Value  |
|------------------------------ | ------ |
| **RESIN_HOST_CONFIG_gpu_mem** | `160`  |

### Suggested Device Configuration

Set these in the Fleet or Device Configuration panel.

| Name                                   | Value  |
|--------------------------------------- | ------ |
| **RESIN_SUPERVISOR_DELTA**             | `1`    |
| **RESIN_HOST_CONFIG_disable_splash**   | `1`    |
| **RESIN_HOST_CONFIG_disable_overscan** | `1`    |

### Device Service Variable to enable Remote Control

Set this in the Device Service Variables panel.

| Name                                            | Value |
|------------------------------------------------ | ----- |
| **ENABLE_REMOTE_CONTROL_VIA_ADVANCEDSETTINGS**  | `1`   |

Settings this environment variable will put the file `advancedsettings.xml` in the folder `/root/.kodi/userdata`.
This will enable the web interface as specified in https://kodi.wiki/view/Web_interface so you can control Kodi via http://<IP_address>:8080 or using a Kodi Remote app.

## pHAT DAC configuration

### Required Device Configuration

Set this in the Fleet or Device Configuration panel.

| Name                            | Value            |
|-------------------------------- | ---------------- |
| **RESIN_HOST_CONFIG_dtoverlay** | `hifiberry-dac`  |

### Required Device Service Variable

Set this in the Device Service Variables panel.

| Name         | Value |
|------------- | ----- |
| **PHAT_DAC** | `1`   |

## Post Installation Configuration

In order to assure that the raspberry pi is able to properly play videos you must enable **Allow hardware acceleration - OMXPlayer** from the **Settings > Player Settings** menu.

## Post Installation Configuration for Amazon prime videos

Below instructions are based on section _"Install and Configure Amazon Video on Raspberry Pi"_ of  https://www.makeuseof.com/tag/netflix-amazon-video-plex-raspberry-pi/

Note that you don't need to download `repository.sandmann79.plugins-1.0.2.zip`.  This file is already downloaded.  It can be found in the root folder (= `\`)!

### Instructions

Within Kodi:

1. `Add-ons` => Enter `add-on browser`
1. `Install from zip file`
1. Most likely you will get a message telling that for security reasons it is not allowed to install from zip file.  In that case select `Settings`and then check `Unknown sources`and then `yes` and then go back.  Now you should see the menu `install from zip file`.
1. select `root file system` and then select `repository.sandmann79.plugins-1.0.2.zip` (which is directly located in root folder)
1. browse back, select again `enter add-on browser` and this time select `Install from repository` and selects `Sandmann79s Repository`.
1. go to `Video Add-ons`, select `Amazon VOD` (version 0.7.4) and click on `install` and select `ok`.
1. Reboot kodi (I did it using the kodi menu but most likely restarting kodi service through balenaCloud dashboard is sufficient.
1. Then from `Add-ons` select `Amazon VOD`.  You should now see the `Settings - Amazon VOD` screen
1. In `General` tab check that `Playback with` is set to `Input Stream` if not change it.
1. In `connection` tab select `signin` and enter your amazon login and password.  If you have enabled 2 factor authentication you should also enter the code has been sent to you.
1. If you then play for the first time an Amazon VOD video, follow all instructions to install the necesarry chrome plugin.

## Amazon Prime & Amazon Vod Addon

For more information about the `Amazon VOD` add-on see the [faq](https://github.com/Sandmann79/xbmc/wiki/FAQ) and its [github repository](https://github.com/Sandmann79/xbmc)

### Limitations (on a raspberry pi)

1. `Àllow hardware accellaration - OMXplayer` must be disabled otherwise you get green screen when playing movies (see [playing an amazon prime video shows green screen #1](https://github.com/janvda/balena-kodi-etcetera/issues/1))
1. on a pi the max video resolution is apparently 720p - you can change the video resolution when playing a movie.  See also [My video is choppy / My video stutters a lot](https://github.com/Sandmann79/xbmc/wiki/FAQ#my-video-is-choppy--my-video-stutters-a-lot).

### Tip

I noticed that searching for Amazon movies and series is very slow in kodi (I think this is also covered in [issue 304](https://github.com/Sandmann79/xbmc/issues/304)).  It is much faster to search those Amazon movies and series from a PC/laptop at site [primevideo](https://www.primevideo.com/) and add them to your watch list.  In kodi you can then open your watch list and launch the movies and series from there.

## License

Copyright 2016 Rulemotion Ltd.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

[http://www.apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
