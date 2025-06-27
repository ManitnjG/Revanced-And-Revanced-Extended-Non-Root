#!/bin/bash
# ReVanced Experiments  build 
source src/build/utils.sh

#################################################


dl_gh "revanced-patches" "revanced" "latest"
dl_gh "revanced-cli" "revanced" "latest"

#################################################
  	get_patches_key "instagram"
	wget "https://apkcombo.com/r2?u=https%3A%2F%2Fapks.39b7cb94d40914bac590886981b0ed6e.r2.cloudflarestorage.com%2Fcom.instagram.android%2F387.0.0.0.61%2F379103159.538c187a90cb4972779ad204d6c679db01483eda.apk%3Fresponse-content-disposition%3Dattachment%253B%2520filename%253D%2522Instagram_387.0.0.0.61_apkcombo.com.apk%2522%26response-content-type%3Dapplication%252Fvnd.android.package-archive%26X-Amz-Algorithm%3DAWS4-HMAC-SHA256%26X-Amz-Date%3D20250627T062325Z%26X-Amz-SignedHeaders%3Dhost%26X-Amz-Expires%3D14400%26X-Amz-Credential%3D3cb727b4cd4780c410b780ac7caa4da3%252F20250627%252Fauto%252Fs3%252Faws4_request%26X-Amz-Signature%3D4e3d8eff59856b3452d13d54d124528c3519ca22964b802d9b58f26254b2caa2&fp=e132b61254764eedfadc8468c86d3029&ip=61.246.213.190&package_name=com.instagram.android&lang=en" -O Instagram_387.0.0.0.61.apk
	ls
 	patch "instagram-arm64-v8a" "revanced" "instagram"

dl_gh "revanced-patches" "anddea" "latest"

get_patches_key "Spotjfy-anddea"
j="i"
version="9.0.54.518" #https://github.com/ReVanced/revanced-patches/issues/4958#issuecomment-2883387940
get_apkpure "com.spot"$j"fy.music" "spotjfy-arm64-v8a" "spot"$j"fy-music-and-podcasts-for-android/com.spot"$j"fy.music"
patch "spotjfy-arm64-v8a" "anddea"
