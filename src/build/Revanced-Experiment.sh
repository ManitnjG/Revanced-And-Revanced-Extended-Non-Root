#!/bin/bash
# ReVanced Experiments  build 
source src/build/utils.sh

#################################################

# Download requirements
dl_gh "ReVancedExperiments" "Aunali321" "latest"
dl_gh "revanced-cli" "revanced" "latest"

#################################################

# Patch Telegram CH Play Version:
# Patch Instagram:
get_patches_key "instagram-revanced-experiments"
get_apk() {
  PACKAGE=$1
  OUTPUT_NAME=$2
  MIRROR_PATH=$3
  APP_NAME=$4
  DPI=$5

  URL="https://www.apkmirror.com/apk/${MIRROR_PATH}/${APP_NAME}-378-0-0-52-68-release/"
  
  # Download matching APK
  get-apk \
    --url "$URL" \
    --pattern "378.0.0.52.68.*arm64-v8a.*${DPI}.*\\.apk$" \
    --output "${OUTPUT_NAME}.apk"
}
patch "instagram-arm64-v8a" "revanced-experiments"
