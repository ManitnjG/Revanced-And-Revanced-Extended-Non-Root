#!/bin/bash
# Revanced build
source ./src/build/utils.sh
# Download requirements
revanced_dl(){
	dl_gh "ReVancedExperiments" "Aunali321" "latest"
 	dl_gh "revanced-cli" "revanced" "latest"
}

4() {
	revanced_dl
	# Patch Tiktok:
	
	# Patch Instagram:
	# Arm64-v8a

	get_patches_key "instagram"
	get_apk "com.instagram.android" "instagram-arm64-v8a" "instagram-instagram" "instagram/instagram-instagram/instagram" "arm64-v8a" "nodpi"
	patch "instagram-arm64-v8a" "revanced"
}
12() {
	revanced_dl
	# Patch Spotjfy Arm64-v8a
	get_patches_key "Spotjfy-revanced"
 	url="https://apkcombo.com/spotify/com.spotify.music/download/phone-9.0.56.106-apk"
	url="https://dw.uptodown.com/dwn/$(req "$url" - | $pup -p --charset utf-8 'button#detail-download-button attr{data-url}')"
 	cd download
  	ls
	patch "Spotify*.apk" "revanced-extended" "inotia"
}
case "$1" in
    4)
        4
        ;;
    12)
        12
        ;;
    
esac
