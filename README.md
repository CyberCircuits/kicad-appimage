# KiCad AppImages

These AppImages were built on a Dockerized Ubuntu 20.04 and tested on Ubuntu 22.04 and Debian 12.

## Build

1. Install (and start) [Docker](https://docs.docker.com/engine/install/).
2. `git clone https://github.com/CyberCircuits/kicad-appimage.git`
3. `cd kicad-appimage`
4. `docker compose run kicad`
5. `make` or `make 3d`

## Requirements
Graphics-related libraries are not bundled because the display driver is built to a specific kernel version.

### Ubuntu 22.04 or later
Newer Ubuntu comes preinstalled with fuse3 and libfuse3. We must install libfuse2 separately.

```
sudo add-apt-repository universe
sudo apt install libfuse2
```

### Debian 11 or later

`sudo apt install libglu1-mesa`

### Fedora

`sudo dnf install mesa-libGLU`

## Download
Please see [releases](https://github.com/CyberCircuits/kicad-appimage/releases) for all the binary AppImages for download.

