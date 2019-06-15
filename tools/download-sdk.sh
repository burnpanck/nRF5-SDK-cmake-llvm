#! /usr/bin/env bash

set -e
set -o errexit

VERSION=15.3.0
HASH=59ac345

ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." >/dev/null 2>&1 && pwd )"
VERSION_ARRAY=(${VERSION//./ })
VERSION_MAIN=${VERSION_ARRAY[0]}

cd ${ROOT_DIR}

[ -d sdk ] && rm -r sdk
FILE_NAME=nRF5_SDK_${VERSION}_${HASH}
curl -LO https://developer.nordicsemi.com/nRF5_SDK/nRF5_SDK_v${VERSION_MAIN}.x.x/${FILE_NAME}.zip
unzip ${FILE_NAME}.zip
rm ${FILE_NAME}.zip
mv ${FILE_NAME} sdk
echo -e "VERSION=${VERSION}\nHASH=${HASH}" > sdk/version.txt

# clean up, a little
cd sdk
rm *.msi
rm external/fatfs/doc/res/fd.mp4
rm external/fatfs/doc/res/mkfs.xls
rm -r external_tools

