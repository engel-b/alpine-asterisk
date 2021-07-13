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
docker build -t engel-b/alpine-asterisk:<version> .
```

