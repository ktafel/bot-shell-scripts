#!/bin/bash
BASE_BUILD_NUMBER=600001
BUILD_NUMBER_XCS=${XCS_INTEGRATION_NUMBER:-"2"}
BUILD_NUMBER=$(($BASE_BUILD_NUMBER + $BUILD_NUMBER_XCS))
echo "changing build number to $BUILD_NUMBER"
/usr/libexec/PlistBuddy -c "Set :CFBundleVersion $BUILD_NUMBER" "${PROJECT_DIR}/${INFOPLIST_FILE}"
