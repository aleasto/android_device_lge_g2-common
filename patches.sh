while read -r p; do
  [[ -n "$p" && "$p" != [[:blank:]#]* ]] && \
  git fetch https://github.com/LineageOS/android_device_lge_g2-common $p && \
  git cherry-pick FETCH_HEAD
done < patches.txt
