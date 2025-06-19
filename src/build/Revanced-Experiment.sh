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
get_apk "com.instagram.android" "instagram-arm64-v8a" "instagram/instagram-instagram" "arm64-v8a" "640dpi"
patch "instagram-arm64-v8a" "revanced-experiments"
