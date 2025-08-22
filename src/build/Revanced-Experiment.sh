#!/bin/bash
# ReVanced Experiments build 
source src/build/utils.sh

dl_gh "revanced-patches" "anddea" "latest"
dl_gh "revanced-cli" "inotia00" "latest"
wget https://dw.uptodown.net/dwn/ILnMtgdRo-P4xfNcHjQvrdMShhjMiLeh_e9YKZRB5KRWKn7B2HJZdfvvdLChjXW32H4i07iQYqCFcCX5EOBMzZti829oAj-WNcx0l5bAaTAWb9FaHozEv8gpQUn5qr94/KDXNxt_THTqizRwp1mLM6BCk7Vr8SA3GupVmm3CUMml_u-iFDBDgHr1lMDkcZ8gZOwsm5JCCxR7Tb-l7rw8sqcArhanHUweTpqUAzelM5fsaKSVVTMWYMwxtZzi8P9DZ/-DC31a4uAKbcjxTvMNO1_2W1PyPN44S-SfgBGUPH-uhSbDuMOQOsW-C8rCzzjf2Q1JnGmxjum1oVwYdtVVWn1g==/youtube-20-32-43.apk
ls
mv youtube-20-32-43.apk youtube-stable.apk
ls
get_patches_key "youtube-rve-anddea"
patch "youtube-stable" "anddea" "inotia"

#dl_gh "ReVancedExperiments" "Aunali321" "latest"
#dl_gh "revanced-cli" "revanced" "latest"

#################################################

# Patch Telegram CH Play Version:
#get_patches_key "telegram-revanced-experiments"
#get_apk "org.telegram.messenger" "telegram" "telegram" "telegram-fz-llc/telegram/telegram" "arm64-v8a" "nodpi"
#patch "telegram" "revanced-experiments"

# Patch Telegram Web Version:
#get_patches_key "telegram-revanced-experiments"
#get_apk "org.telegram.messenger" "telegram-web-version" "telegram-web-version" "telegram-fz-llc/telegram-web-version/telegram-web-version"
#patch "telegram-web-version" "revanced-experiments"

# Patch Instagram:
#get_patches_key "instagram-revanced-experiments"
#version="362.0.0.33.241"
#get_apk "com.instagram.android" "instagram-arm64-v8a" "instagram-instagram" "instagram/instagram-instagram/instagram-instagram" "arm64-v8a" "nodpi"
#patch "instagram-arm64-v8a" "revanced-experiments"
