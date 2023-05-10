#!/bin/bash
# Revanced Extended for android 6 & 7 build
source src/build/tools.sh

release=$(curl -s "https://api.github.com/repos/kitadai31/revanced-patches-android6-7/releases/latest")
asset=$(echo "$release" | jq -r '.assets[] | select(.name | test("revanced-patches.*\\.jar$")) | .browser_download_url')
curl -sL -O "$asset"
ls revanced-patches*.jar >> new.txt
rm -f revanced-patches*.jar
release=$(curl -s "https://api.github.com/repos/FiorenMas/Revanced-And-Revanced-Extended-Non-Root/releases/latest")
asset=$(echo "$release" | jq -r '.assets[] | select(.name == "revanced-extended-android-6-7-version.txt") | .browser_download_url')
curl -sL -O "$asset"
if diff -q revanced-extended-android-6-7-version.txt new.txt >/dev/null ; then
echo "Old patch!!! Not build"
exit 0
else
rm -f *.tx

dl_gh "revanced-patches-android6-7 revanced-integrations" "kitadai31" "latest"
dl_gh "revanced-cli" "j-hc" "latest"

# Patch YouTube Extended
get_patches_key "youtube-revanced-extended-6-7"
version="17.34.36"
#get_ver "hide-general-ads" "com.google.android.youtube"
get_apk "youtube" "youtube" "google-inc/youtube/youtube"
patch "youtube" "youtube-revanced-extended-android-6-7"
change_arch "youtube-revanced-extended-android-6-7" "youtube-revanced-extended-android-6-7-arm64-v8a" "--rip-lib x86_64 --rip-lib x86 --rip-lib armeabi-v7a"
change_arch "youtube-revanced-extended-android-6-7" "youtube-revanced-extended-android-6-7-armeabi-v7a" "--rip-lib x86_64 --rip-lib x86 --rip-lib arm64-v8a"
change_arch "youtube-revanced-extended-android-6-7" "youtube-revanced-extended-android-6-7-x86_64" "--rip-lib x86 --rip-lib armeabi-v7a --rip-lib arm64-v8a"
change_arch "youtube-revanced-extended-android-6-7" "youtube-revanced-extended-android-6-7-x86" "--rip-lib x86_64 --rip-lib armeabi-v7a --rip-lib arm64-v8a"

ls revanced-patches*.jar >> revanced-extended-android-6-7-version.txt
fi
