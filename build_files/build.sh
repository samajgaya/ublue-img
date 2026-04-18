#!/bin/bash

set -ouex pipefail

dnf install -y  \
	NetworkManager \
	iwd \
	@base-x \
	libXft \
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
