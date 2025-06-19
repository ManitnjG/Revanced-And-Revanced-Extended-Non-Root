#!/bin/bash
# Revanced build
source ./src/build/utils.sh
# Download requirements
revanced_dl(){
	dl_gh "ReVancedExperiments" "Aunali321" "latest"
 	dl_gh "revanced-patches revanced-cli" "inotia00" "latest"
}

4() {
	revanced_dl
	# Patch Tiktok:
	
	# Patch Instagram:
	# Arm64-v8a
	get_patches_key "instagram"
	url="https://instagram.en.uptodown.com/android/download/1079737991" #Use uptodown because apkmirror ban tiktok in US lead github action can't download apk file
	url="https://dw.uptodown.com/dwn/$(req "$url" - | $pup -p --charset utf-8 'button#detail-download-button attr{data-url}')"	
 	req "$url" "instagram-arm64-v8a.apk"
 	 ls
	patch "instagram-arm64-v8a" "ReVancedExperiments" "Aunali321"
}
12() {
	revanced_dl
	# Patch Spotjfy Arm64-v8a
	get_patches_key "Spotjfy-revanced"
	j="i"
 	url="https://apkcombo.com/spotify/com.spotify.music/download/phone-9.0.56.106-apk"
	url="https://dw.uptodown.com/dwn/$(req "$url" - | $pup -p --charset utf-8 'button#detail-download-button attr{data-url}')"
 	get_apkpure "com.spot"$j"fy.music" "spotjfy-arm64-v8a" "spot"$j"fy-music-and-podcasts-for-android/com.spot"$j"fy.music"
	patch "spotjfy-arm64-v8a" "revanced-extended" "inotia"
}
case "$1" in
    4)
        4
        ;;
    12)
        12
        ;;
    
esac
