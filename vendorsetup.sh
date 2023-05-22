#!/bin/sh

# Memory the current directory
CUR_DIR=$(pwd)

# Remove GoogleParts to avoid build errors
croot && cd device/google/
rm -rf ../gs*/parts/

# Replace Phonesky to right ABI one
croot && cd vendor/gms/common/proprietary/product/priv-app/Phonesky/
curl -O https://gitlab.com/EvoX/vendor_gms/-/raw/tiramisu-pixel/product/packages/privileged_apps/Phonesky/Phonesky.apk

# Return cd to memoried directory
cd $CUR_DIR ; unset CUR_DIR

return
