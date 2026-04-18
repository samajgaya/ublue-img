#!/bin/bash

set -ouex pipefail

dnf install -y  \
	NetworkManager \
	iwd \
	xorg-x11-server-Xorg \
	xorg-x11-drv-libinput \
	libXft
	mesa-dri-drivers \
	google-noto-sans-fonts \
	google-noto-serif-fonts \
	wayland-utils \
	git \
	gcc \
	gcc-c++ \
	make \
	automake \
	kernel-devel \
	wget

systemctl enable NetworkManager

dnf clean all
