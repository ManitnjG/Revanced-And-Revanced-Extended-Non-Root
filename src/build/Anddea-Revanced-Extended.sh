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
get_apkpure "com.spot"$j"fy.music" "spotjfy-arm64-v8a" "spot"$j"fy-music-and-podcasts-for-android/com.spot"$j"fy.music"
patch "spotjfy-arm64-v8a" "anddea"
xapk_file="$1"

if [[ ! -f "$xapk_file" ]]; then
  echo "File not found: $xapk_file"
  exit 1
fi

# Create output directory
output_dir="${xapk_file%.xapk}"
mkdir -p "$output_dir"

# Extract the XAPK (it's a ZIP archive)
unzip -o "$xapk_file" -d "$output_dir"

# Find the APK inside extracted files
apk_path=$(find "$output_dir" -type f -name '*.apk' | head -n 1)

if [[ -z "$apk_path" ]]; then
  echo "No APK found inside $xapk_file"
  exit 1
fi

echo "APK extracted to: $apk_path"
patch "spotjfy-beta-arm64-v8a" "anddea"
