#!/bin/bash
# ReVanced Experiments  build 
source src/build/utils.sh

#################################################


dl_gh "revanced-patches" "revanced" "latest"
dl_gh "revanced-cli" "revanced" "latest"

#################################################
  	get_patches_key "instagram"
   	wget https://apks.39b7cb94d40914bac590886981b0ed6e.r2.cloudflarestorage.com/com.instagram.android/386.0.0.19.84/379005606.7f8984c2beb5ae09aeac17b80d77173d3ed12ffe.apk?response-content-disposition=attachment%3B%20filename%3D%22Instagram_386.0.0.19.84_apkcombo.com.apk%22&response-content-type=application%2Fvnd.android.package-archive&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20250625T105809Z&X-Amz-SignedHeaders=host&X-Amz-Expires=14400&X-Amz-Credential=3cb727b4cd4780c410b780ac7caa4da3%2F20250625%2Fauto%2Fs3%2Faws4_request&X-Amz-Signature=5bd5dad828af78cb3b3d5336c83253be82d608a76084f22dfe5486af5dd24b70
	patch "Instagram_386.0.0.19.84_apkcombo.com" "revanced" "instagram"

dl_gh "revanced-patches" "anddea" "latest"

get_patches_key "Spotjfy-anddea"
j="i"
version="9.0.54.518" #https://github.com/ReVanced/revanced-patches/issues/4958#issuecomment-2883387940
get_apkpure "com.spot"$j"fy.music" "spotjfy-arm64-v8a" "spot"$j"fy-music-and-podcasts-for-android/com.spot"$j"fy.music"
patch "spotjfy-arm64-v8a" "anddea"
