#!/bin/bash
# ReVanced Experiments  build 
source src/build/utils.sh

#################################################


dl_gh "revanced-patches" "revanced" "latest"
dl_gh "revanced-cli" "revanced" "latest"
dl_gh "revanced-patches" "anddea" "latest"
dl_gh "revanced-cli" "inotia00" "latest"
#################################################

# Patch Telegram CH Play Version:
# Patch Instagram:
  	get_patches_key "instagram"
   	version="379.1.0.43.80"
	get_apk "com.instagram.android" "instagram-arm64-v8a" "instagram-instagram" "instagram/instagram-instagram/instagram" "arm64-v8a" "nodpi"
	patch "instagram-arm64-v8a" "revanced" "instagram"

get_patches_key "Spotjfy-anddea"
j="i"
version="9.0.54.518" #https://github.com/ReVanced/revanced-patches/issues/4958#issuecomment-2883387940
get_apkpure "com.spot"$j"fy.music" "spotjfy-arm64-v8a" "spot"$j"fy-music-and-podcasts-for-android/com.spot"$j"fy.music"
patch "spotjfy-arm64-v8a" "anddea"
