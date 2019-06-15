#!/usr/bin/env bash

set -e
set -o errexit

ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." >/dev/null 2>&1 && pwd )"

SDK_ROOT=${ROOT_DIR}/sdk

cd ${ROOT_DIR}/tools
assets/nrfsvc.py -uk wrap ${SDK_ROOT}/
assets/nrfsvc.py -uk svc ${SDK_ROOT}/components/softdevice
assets/nrfpatch.sh -l ${SDK_ROOT}


