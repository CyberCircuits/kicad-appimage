FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update \
 && apt install -y \
    curl \
    wget \
    make \
    libfuse2 \
    file \
    binutils \
    python3.10 \
    libpython3.10 \
    libjpeg-turbo8 \
    libtiff5 \
    libwebp-dev \
    libpango-1.0-0 \
    libpangoft2-1.0-0 \
    libgtk-3-0 \
    libglib2.0-dev \
    libglu1-mesa \
    libsm6 \
    libopengl0 \
    imagemagick \
    gir1.2-xapp-1.0 libxapp1 xapps-common python3-xapp

RUN curl -s https://api.github.com/repos/AppImageCommunity/pkg2appimage/releases \
  | grep "browser_download_url.*-x86_64\.AppImage" \
  | cut -d : -f 2,3 \
  | tr -d \" \
  | head -n 1 \
  | wget -qi -
RUN chmod +x ./pkg2appimage-*.AppImage
