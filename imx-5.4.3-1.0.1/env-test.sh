#!/bin/bash
# Here are some default settings.
# Make sure DOCKER_WORKDIR is created and owned by current user.

# Docker

DOCKER_IMAGE_TAG="imx-clean-env"
DOCKER_WORKDIR="/opt/yocto"

# Yocto

IMX_RELEASE="imx-5.4.3-1.0.1"

YOCTO_DIR="${DOCKER_WORKDIR}/${IMX_RELEASE}-build"

MACHINE="imx8qxpmek"
DISTRO="fsl-imx-xwayland"
# IMAGES="fsl-image-machine-test"
IMAGES="imx-image-core"

# REMOTE="https://github.com/hatran3e/imx-manifest"
REMOTE="https://github.com/nxp-imx/imx-manifest"
BRANCH="imx-linux-zeus"
MANIFEST=${IMX_RELEASE}".xml"
