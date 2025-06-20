#!/bin/bash
# ReVanced Experiments  build 
source src/build/utils.sh

#################################################


dl_gh "revanced-patches" "revanced" "latest"



#################################################

# Patch Telegram CH Play Version:
# Patch Instagram:
  	get_patches_key "instagram"
   	version="379.1.0.43.80"
	get_apk "com.instagram.android" "instagram-arm64-v8a" "instagram-instagram" "instagram/instagram-instagram/instagram" "arm64-v8a" "nodpi"
	patch "instagram-arm64-v8a" "revanced"
