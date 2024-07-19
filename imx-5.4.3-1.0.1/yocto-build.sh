#!/bin/bash
# This script will run into container

# source the common variables

. imx-5.4.3-1.0.1/env.sh

#

mkdir -p ${YOCTO_DIR}
cd ${YOCTO_DIR}

# Init

repo init \
    -u ${REMOTE} \
    -b ${BRANCH} \
    -m ${MANIFEST}

repo sync -j16

# source the yocto env

# EULA=1 MACHINE="${MACHINE}" DISTRO="${DISTRO}" source imx-setup-release.sh -b build_${DISTRO}

# EULA=1 MACHINE="${MACHINE}" DISTRO="${DISTRO}" BSPDIR="/share_dl" source imx-setup-release.sh -b build_${DISTRO}
EULA=1 MACHINE="${MACHINE}" DISTRO="${DISTRO}" DL_DIR="/home/shared_folder/nxp_libs/" source imx-setup-release.sh -b build_${DISTRO}
# Build
# bitbake bc
# bitbake ${IMAGES} -c cleanall
# bitbake ${IMAGES} -c populate_sdk
echo "----------------------------"
echo "Done pre-setup bitbake for $IMAGES!!!"
echo "----------------------------"
bitbake ${IMAGES}
