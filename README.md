#                                       Device Tree for Motorola E4 (8.0 , 3.18.35+)

The Moto E4 (codenamed _"woods"_) is a mid-range smartphone from Motorola.
![Moto E4](https://github.com/dev4wds/local_manifest/raw/los-14.1/device/motorola-moto-e4.jpg "Moto E4")

Basic   | Spec Sheet
-------:|:-------------------------
CPU     | Quad-core 1.3 GHz Cortex-A53
Chipset | MediaTek MT6737
GPU     | Mali-T720
Memory  | 2GB RAM
Shipped Android Version | 7.1
Storage | 16GB
MicroSD | Up to 64GB
Battery | Li-Pol 2800mAh battery
Display | 720 x 1280 pixels, 5.0 inches
Camera  | Main 8MP / Front 5MP, autofocus, LED flash

Copyright 2017 - The LineageOS Project.
Thanks to olegsvs, danielhk, Zormax, darklord4822, xcore995, SRT.

### Working:
- [x] Wifi
- [x] Sound
- [x] LiveDisplay
- [ ] Ril
- [ ] Codecs
- [ ] Camera, flashlight
- [x] Radio
- [ ] Fingerprint
- [ ] Bluetooth
- [x] Sensors
- [ ] Hotspot
- ...


### NOTE :

_Before you use do the following, keep in mind that you only
do these when the applied __Patch__ fails to work ._


Apply these manual edit to lineage-15.0/15.1 source 
before building the rom

with nano editor, edit these files by Commenting the line :

in ( system/sepolicy/public ) 
 ```domain.te``` 
 [ line number : ```227 on 15.0``` & or ```230 on 15.1```  ]
 
 in ( system/core/init ) 
 ```init.cpp```
 [ line number : ```401 on 15.0``` & or ```434 on 15.1```  ]


example :

Comment line : ```230```

```nano +230 system/sepolicy/public/domain.te```

Comment line : ```434```

```nano +434 system/core/init/init.cpp```

Copy this `SkUserConfig.h` & `SkUserConfigManual.h` to destination ```external/skia/include/core```  with below command  

```
cp external/skia/include/config/SkUserConfig.h external/skia/include/core
cp external/skia/include/config/SkUserConfigManual.h external/skia/include/core
```
:Sensors HAL (DO ONLY WHEN REQUIRED!)

when building with : ```PRODUCT_PACKAGES += android.hardware.sensors@1.0-service``` ,it's advisable to locate the ```Sensors.cpp``` $location :```hardware/interfaces/sensors/1.0/default/Sensors.cpp``` and modify it  from```CHECK_GE(getHalDeviceVersion(), SENSORS_DEVICE_API_VERSION_1_3);```  to ```CHECK_GE(getHalDeviceVersion(), SENSORS_DEVICE_API_VERSION_1_0);``` 

see line here : https://github.com/LineageOS/android_hardware_interfaces/blob/621821f3191754678125a44a1f9b4dbd69f76541/sensors/1.0/default/Sensors.cpp#L98

- -

