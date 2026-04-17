#!/bin/bash

set -ouex pipefail

dnf install -y  \
	network-manager \
	iwd \
	xorg-x11-server-Xorg \
	xorg-x11-drv-libinput \
	mesa-dri-drivers \
	google-noto-sans-fonts \
	google-noto-serif-fonts \
	wayland-utils \
	libXft

systemctl enable NetworkManager

dnf clean all
