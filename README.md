# KiCad AppImages

These AppImages were built on a Dockerized Ubuntu 20.04 and tested on Ubuntu 22.04, Debian 12 (Xfce), Fedora 38 and Fedora 40.

## Build

1. Install (and start) [Docker](https://docs.docker.com/engine/install/).
2. `git clone https://github.com/CyberCircuits/kicad-appimage.git`
3. `cd kicad-appimage`
4. `docker compose run dev`
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

## Usage

To access internal binaries in KiCad, provide the executable name as the first argument.

For example, to use the KiCad command-line interface, type `./KiCad-xxx.AppImage kicad-cli`, where `xxx` represents the version number.

To open standalone Schematic editor type `./KiCad-xxx.AppImage eeschema <path/to/file.kicad_sch>`

To open standalone PCB editor type `./KiCad-xxx.AppImage pcbnew <path/to/file.kicad_pcb>`

List of accessible binaries:
- bitmap2component
- eeschema
- idf2vrml
- idfrect
- pcbnew
- kicad-cli
- dxf2idf
- gerbview
- pcb_calculator
- pl_editor

## Download
[![Download KiCad-AppImage](https://a.fsdn.com/con/app/sf-download-button)](https://sourceforge.net/projects/kicad-appimage/files/latest/download)

Please see [releases](https://github.com/CyberCircuits/kicad-appimage/releases) for all available binary AppImages for download.

[![Download KiCad-AppImage](https://img.shields.io/sourceforge/dt/kicad-appimage.svg)](https://sourceforge.net/projects/kicad-appimage/files/latest/download)

