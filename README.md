# Asterisk PBX Docker image

This is a very small Docker image with Asterisk PBX. It's a fork from https://github.com/andrius/alpine-asterisk

## What's missing

Only base Asterisk packages installed. If you want to add sounds, it's recommended to mount them as volume or data container, however you may install additional packages with `apk` command:

- asterisk-sounds-en
- asterisk-sounds-moh
- asterisk-alsa
- asterisk-srtp
- asterisk-curl
- asterisk-tds
- asterisk-mobile
- asterisk-dahdi
- asterisk-fax
- asterisk-speex
- asterisk-pgsql
- asterisk-odbc

## Build
```bash
docker build -t engelb/alpine-asterisk:<version> .
```

# Minimal configuration

A set of a working set of configuration files was put in required_minimal_config. But some adaption are needed to use them

* extensions.conf
  * <openhab-host-or-ip> address of openhab host
  * <switch-item> name of switch item in openHAB
* sip.conf
  * <voip-username> configured sip username
  * <voip-password> configured sip password
  * <fritzbox-host-or-ip> address of fritzbox (eg. fritz.box or 192.168.178.1)
  * <fritzbox-internal-nr> fritzbox internal number
