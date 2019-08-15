# balena-kodi
A boilerplate for getting up and running with [Kodi](https://kodi.tv/) v18.2 Git:20190428-a94ccc8ba5
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

# Post Installation Configuration

In order to assure that the raspberry pi is able to properly play videos you must enable **Allow hardware acceleration - OMXPlayer** from the **Settings > Player Settings** menu.

# Post Installation Configuration for Amazon prime videos

Follow the instructions specified in section _"Install and Configure Amazon Video on Raspberry Pi"_ of  https://www.makeuseof.com/tag/netflix-amazon-video-plex-raspberry-pi/

Note that you don't need to download `repository.sandmann79.plugins-1.0.2.zip`.  This file is already downloaded.  It can be found in the root folder (= `\`)

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
