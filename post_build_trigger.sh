#!/bin/bash
IPA_PATH="${XCS_ARCHIVE}"
echo "starting trigger for $IPA_PATH"
sudo rm -rf /tmp/com.yourdomain/hockey/
sudo mkdir -p /tmp/com.yourdomain/hockey/
sudo chown 777 /tmp/com.yourdomain/hockey/
TMP_PATH="/tmp/com.yourdomain/hockey/YourAppName.xcarchive"
sudo mv -f "$IPA_PATH" "$TMP_PATH"
sudo chown 777 /tmp/com.yourdomain/hockey/YourAppName.xcarchive
sudo /usr/local/bin/ios_notes.sh
sudo /usr/local/bin/puck_upload.sh
echo "completed hockey upload"
