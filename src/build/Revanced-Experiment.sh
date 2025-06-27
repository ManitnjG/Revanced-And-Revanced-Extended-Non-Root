#!/bin/bash
# ReVanced Experiments  build 
source src/build/utils.sh

#################################################


dl_gh "revanced-patches" "revanced" "latest"
dl_gh "revanced-cli" "revanced" "latest"

#################################################
 get_patches_key "instagram"  # This should set or fetch patch details
rm instagram-arm64-v8a.apk
curl -L -o instagram-arm64-v8a.apk "https://apkcombo.com/r2?u=https%3A%2F%2Fapks.39b7cb94d40914bac590886981b0ed6e.r2.cloudflarestorage.com%2Fcom.instagram.android%2F387.0.0.0.61%2F379103159.538c187a90cb4972779ad204d6c679db01483eda.apk%3F..."

if [ -f "instagram-arm64-v8a.apk" ]; then
  echo "APK downloaded successfully"
else
  echo "Download failed"
fi

ls 
patch "instagram-arm64-v8a" "revanced" "instagram"
dl_gh "revanced-patches" "anddea" "latest"

get_patches_key "Spotjfy-anddea"
j="i"
version="9.0.54.518" #https://github.com/ReVanced/revanced-patches/issues/4958#issuecomment-2883387940
get_apkpure "com.spot"$j"fy.music" "spotjfy-arm64-v8a" "spot"$j"fy-music-and-podcasts-for-android/com.spot"$j"fy.music"
patch "spotjfy-arm64-v8a" "anddea"
