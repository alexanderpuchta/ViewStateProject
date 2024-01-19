#!/bin/sh

SETTINGS_BUNDLE_FOLDER=${PROJECT_DIR}/${TARGET_NAME}/Resources/SettingsBundles
VERSION="$MARKETING_VERSION" #($CURRENT_PROJECT_VERSION)"
SETTINGS_ROOT_PLIST="Settings.bundle/Root.plist"
/usr/libexec/PlistBuddy -c "Set PreferenceSpecifiers:1:DefaultValue $VERSION" "$CODESIGNING_FOLDER_PATH/$SETTINGS_ROOT_PLIST"
/usr/libexec/PlistBuddy -c "Set PreferenceSpecifiers:1:DefaultValue $VERSION" "${SETTINGS_BUNDLE_FOLDER}/Dev/$SETTINGS_ROOT_PLIST"
/usr/libexec/PlistBuddy -c "Set PreferenceSpecifiers:1:DefaultValue $VERSION" "${SETTINGS_BUNDLE_FOLDER}/Prod/$SETTINGS_ROOT_PLIST"
