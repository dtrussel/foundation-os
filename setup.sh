#!/bin/bash

SCRIPT=$(readlink -f "$0")
SCRIPT_DIR=$(dirname $SCRIPT)

sudo apt-get install gawk wget git-core diffstat \
  unzip texinfo gcc-multilib build-essential chrpath socat

git submodule update --init --recursive
source ${SCRIPT_DIR}/poky/oe-init-build-env ${SCRIPT_DIR}/build

bitbake-layers add-layer ${SCRIPT_DIR}/meta-openembedded
bitbake-layers add-layer ${SCRIPT_DIR}/meta-foundation

