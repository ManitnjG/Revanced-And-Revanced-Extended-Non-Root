#!/bin/bash
# Revanced Extended forked by Anddea build
source src/build/utils.sh
# Download requirements
dl_gh "revanced-patches" "anddea" "latest"
dl_gh "revanced-cli" "inotia00" "latest"


# Patch Spotjfy Arm64-v8a
get_patches_key "Spotjfy-anddea"
j="i"
version="9.0.52.505" #https://github.com/ReVanced/revanced-patches/issues/4958#issuecomment-2883387940
get_uptodown "com.spot"${j}"fy.music" "spotjfy-arm64-v8a" "spotify"${j}"en.uptodown.com/android/download"
patch "spotjfy-arm64-v8a" "anddea"
