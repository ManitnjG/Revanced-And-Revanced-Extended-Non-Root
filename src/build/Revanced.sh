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
page_url="https://instagram.en.uptodown.com/android/download/1079737991"

# Define 'req' function to download files
req() {
  curl -L -o "$2" "$1"
}

# Fetch the actual data-url using pup (ensure 'pup' is installed)
download_path=$(curl -sL "$page_url" | pup 'button#detail-download-button attr{data-url}')

# Compose the real APK download URL
apk_url="https://dw.uptodown.com/dwn/$download_path"

# Download the APK
req "$apk_url" "instagram-arm64-v8a.apk"
ls
cd download
ls
	patch "instagram-arm64-v8a" "revanced-experiments"
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
