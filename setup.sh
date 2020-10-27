#!/bin/bash

SCRIPT=$(readlink -f "$0")
SCRIPT_DIR=$(dirname $SCRIPT)

git submodule update --init --recursive
source ${SCRIPT_DIR}/poky/oe-init-build-env ${SCRIPT_DIR}/build

bitbake-layers add-layer ${SCRIPT_DIR}/meta-openembedded/meta-oe
bitbake-layers add-layer ${SCRIPT_DIR}/meta-foundation
