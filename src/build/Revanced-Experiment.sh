#!/bin/bash
# ReVanced Experiments  build 
source src/build/utils.sh

#################################################


dl_gh "revanced-patches" "revanced" "latest"
dl_gh "revanced-cli" "revanced" "latest"

#################################################
wget https://d-e03.winudf.com/b/XAPK/Y29tLmluc3RhZ3JhbS5hbmRyb2lkXzM3OTAwNDgwN19kODZhM2VhNg?_fn=SW5zdGFncmFtXzM4NS4wLjAuNDcuNzRfQVBLUHVyZS54YXBr&_p=Y29tLmluc3RhZ3JhbS5hbmRyb2lk&download_id=1535500132091765&is_hot=true&k=0f4f05f2bdf7b9bf7f24313ef6d5fa0f685d268c&uu=https%3A%2F%2Fd-08.winudf.com%2Fb%2FXAPK%2FY29tLmluc3RhZ3JhbS5hbmRyb2lkXzM3OTAwNDgwN19kODZhM2VhNg%3Fk%3Df3190c07ce16af0386862d1da95e2cb3685d268c
git clone https://github.com/LuigiVampa92/xapk-to-apk.git
cd xapk-to-apk
chmod +x xapktoapk.py
xapktoapk instagram.xapk
# Patch Telegram CH Play Version:
# Patch Instagram:
  	get_patches_key "instagram"
   	version="379.1.0.43.80"
	get_apk "com.instagram.android" "instagram-arm64-v8a" "instagram-instagram" "instagram/instagram-instagram/instagram" "arm64-v8a" "nodpi"
	patch "instagram-arm64-v8a" "revanced" "instagram"

dl_gh "revanced-patches" "anddea" "latest"

get_patches_key "Spotjfy-anddea"
j="i"
version="9.0.54.518" #https://github.com/ReVanced/revanced-patches/issues/4958#issuecomment-2883387940
get_apkpure "com.spot"$j"fy.music" "spotjfy-arm64-v8a" "spot"$j"fy-music-and-podcasts-for-android/com.spot"$j"fy.music"
patch "spotjfy-arm64-v8a" "anddea"
