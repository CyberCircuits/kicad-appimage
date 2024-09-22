FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update \
 && apt install -y \
    curl \
    wget \
    make \
    libfuse2 \
    file \
    binutils \
    python3.8 \
    libpango-1.0-0 \
    libpangoft2-1.0-0 \
    libgtk-3-0 \
    libglib2.0-dev

RUN curl -s https://api.github.com/repos/AppImageCommunity/pkg2appimage/releases \
  | grep "browser_download_url.*AppImage" \
  | cut -d : -f 2,3 \
  | tr -d \" \
  | head -n 1 \
  | wget -qi -
RUN chmod +x ./pkg2appimage-*.AppImage
