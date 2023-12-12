# Overview
This repository is intended to be used as an
[external customization](https://buildroot.org/downloads/manual/manual.html#outside-br-custom) of the
main [buildroot](https://buildroot.org/) build tree.
It provides latest available versions of the
[CommsChampion Ecosystem](https://commschamp.github.io/) repositories.

# Provided Packages

- [cc-comms](package/cc-comms) - Package of the [COMMS Library](https://github.com/commschamp/comms).
- [cc-commsdsl](package/cc-commsdsl) - Package of the [commsdsl](https://github.com/commschamp/commscommsdsl) code generators.
- [cc-mqtt311](package/cc-mqtt311) - Package of the [cc.mqtt311.generated](https://github.com/commschamp/cc.mqtt311.generated).
- [cc-mqtt5](package/cc-mqtt5) - Package of the [cc.mqtt5.generated](https://github.com/commschamp/cc.mqtt5.generated).
- [cc-mqtt5-libs](package/cc-mqtt5-libs) - Package of the [cc.mqtt5.libs](https://github.com/commschamp/cc.mqtt5.libs).
- [cc-mqttsn](package/cc-mqttsn) - Package of the [cc.mqttsn.generated](https://github.com/commschamp/cc.mqttsn.generated).
- [cc-mqttsn-libs](package/cc-mqttsn-libs) - Package of the [cc.mqttsn.libs](https://github.com/commschamp/cc.mqttsn.libs).
- [cc-ublox](package/cc-ublox) - Package of the [cc.ublox.generated](https://github.com/commschamp/cc.ublox.generated).
- [cc-x509](package/cc-x509) - Package of the [cc.x509.generated](https://github.com/commschamp/cc.x509.generated).

# Some Tips
In case some other project requires code generators from the CommsChampion Ecosystem add "host-cc-commsdsl" to the dependencies.
```
MY_APP_DEPENDENCIES = \
    cc-comms \
    host-cc-commsdsl
```
