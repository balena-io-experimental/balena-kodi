# resin-kodi
A boilerplate for getting up and running with [Kodi](https://kodi.tv/)
open source home theatre on on your resin-enabled [Raspberry Pi](https://www.raspberrypi.org/)!

## Evnvironment variables

Set these environment variables in the application's dashboard on resin.

### Required configuration environment variables

Set this in the Fleet or Device Configuration panel.

| Name                          | Value  |
|------------------------------ | ------ |
| **RESIN_HOST_CONFIG_gpu_mem** | `160`  |

### Suggested configuration environment variables

Set these in the Fleet or Device Configuration panel.

| Name                                   | Value  |
|--------------------------------------- | ------ |
| **RESIN_SUPERVISOR_DELTA**             | `1`    |
| **RESIN_HOST_CONFIG_disable_splash**   | `1`    |
| **RESIN_HOST_CONFIG_disable_overscan** | `1`    |

### pHAT DAC Required configuration environment variable

Set this in the Fleet or Device Configuration panel.

| Name                            | Value            |
|-------------------------------- | ---------------- |
| **RESIN_HOST_CONFIG_dtoverlay** | `hifiberry-dac`  |

### pHAT DAC Required environment variable

Set this in the Environmental Configuration panel.

| Name         | Value |
|------------- | ----- |
| **PHAT_DAC** | `1`   |

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
