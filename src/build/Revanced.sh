#!/bin/bash
# Revanced build
source ./src/build/utils.sh
# Download requirements
revanced_dl(){
	dl_gh "revanced-patches revanced-cli" "revanced" "latest"
}

1() {
	revanced_dl
	# Patch Tiktok:
	
	# Patch Instagram:
	# Arm64-v8a
	get_patches_key "instagram"
	version="384.0.0.46.83"
        get_apk "com.instagram.android" "instagram-arm64-v8a" "instagram-instagram" "instagram/instagram-instagram/instagram" "arm64-v8a" "640dpi"
	patch "instagram-arm64-v8a" "revanced"
}
2() {
	revanced_dl
	# Patch Spotjfy Arm64-v8a
	get_patches_key "Spotjfy-revanced"
	j="i"
	version="9.0.44.478" #https://github.com/ReVanced/revanced-patches/issues/4958#issuecomment-2883387940
	get_apkpure "com.spot"$j"fy.music" "spotjfy-arm64-v8a" "spot"$j"fy-music-and-podcasts-for-android/com.spot"$j"fy.music"
	patch "spotjfy-arm64-v8a" "revanced"
}
case "$1" in
    1)
        1
        ;;
    2)
        2
        ;;
    
esac
