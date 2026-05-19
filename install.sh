#!/usr/bin/env bash

set -e

source "$(dirname "$0")"/install/install-scripts.sh
source "$(dirname "$0")"/install/install-functions.sh
source "$(dirname "$0")"/install/setup-bashrc.sh

install_scripts
install_functions
setup_bashrc
