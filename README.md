# Custom package servers: apt.lumen.sh / arch.lumen.sh

Over the years we discovered several tools we find cool, but we didn't want to install/update them by hand everytime we setup a new server/test environment or when a new update has been released. So one 
day we decided to create our own custom repository for debian/ubuntu servers.

## Installation

If you're on a debian based distribution, run:
```sh
[root ~]# wget -O- https://apt.lumen.sh/install.sh | bash
```

on Archlinux based distributions:
```sh
[root ~]# wget -O- https://arch.lumen.sh/install.sh | bash
```

## Supported distributions and packages
Below are all packages listed we currently have + the version. You can also [browse](https://apt.lumen.sh/pool/stable/binary-amd64/) through all the packages and their versions by yourself.

### Distributions
* Ubuntu/Debian/Linux Mint
* Archlinux based distributions

### Packages

* Composer (1.6.4)
* CouchDB (2.1.1-1)
* Cloudflared (2018.12.1)
* Docker-compose (0.3.0)
* Ethr (0.1)
* fd (6.3.0)
* fish (2.7.1-1)
* git-lfs (2.4.0)
* Golang (1.11)
* Gotty (2.0.0)
* grpcurl (1.0.0)
* httpstat (1.0.0)
* hugo (0.53)
* java10 (10.0.1)
* java8 (1.8.0_191)
* java9 (9.0.4)
* Keybase (1.0.45-20180315160041.29ad56926a)
* Protobuf (3.6.1)
* rclone (1.45)
* restic (0.9.3)
* upx (3.94)
* vegeta (11.2.0)
* youtube-dl (2018.12.09)
* acme.sh (2.7.9)
* frp (0.22.0)
* gotop (1.7.0)
* gron (0.5.2)
* gvisor (1.0.0)
* lego (0.4.1)
* mailhog (1.0.0)
* micro (1.4.1)
* node_exporter (0.15.2)
* pax (0.4.1)
* presla (0.0.10)
* qr-filetransfer (0.1.0)
* roadrunner (v1.2.8)
* streamlink-twitch-gui (1.6.0)
* teleport (3.1.0)
* telegraf (1.9.1-1)
* traefik (1.6.6)
* up (0.2.1)
* watchexec (1.8.6)
* wtf (0.0.3)

### Which architectures do you support?
We currently only support x64 (amd64)

### Contribute
If you want to add/update a package or help us out, create a fork of this repository and create a pull request ^^

### Requirements

If you want to build/test a package by yourself, you need:
 * wget
 * curl
 * build-essential
 * Ruby
 * [fpm](https://fpm.readthedocs.io/en/latest/)

Jump to the directory (named after the package you want to build), enter your console and type in "make".

### Disclaimer

The software and the projects (and their names) belong to their respective owners. If you wish your software to be removed, please contact us at contact@lumen.sh
