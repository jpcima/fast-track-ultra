# fast-track-ultra
Automatic setup of M-Audio Fast Track Ultra for JACK on Linux

# Introduction

The sound card has internal routing, a hardware feature which can be useful on a non-Linux OS.

Under JACK, this routing, enabled at power on, gets in the way of usual workflow; it requires the user to do additional research and work in order to disable it under the ALSA mixer.

This program hooks into udev and does this job automatically, such that using the device becomes a more plug-and-play experience for Linux musicians.

# Installing

Run the given command to install the udev rule and the script.

- `PREFIX` is to indicate where the script will go (under `sbin/`). Default is `/usr/local`.
- `DESTDIR` is to indicate the root directory in which to install. For packagers.

```
make install PREFIX=/usr DESTDIR=/
```
