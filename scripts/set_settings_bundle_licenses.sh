#!/bin/sh

# If you're on an M1 Mac, need this too...
export PATH="/opt/homebrew/bin/:$PATH"

SETTINGS_BUNDLE_FILE=Settings.bundle
SETTINGS_BUNDLE_PATH=ViewStateProject/Resources/SettingsBundles
SETTINGS_BUNDLE_DEV=${SETTINGS_BUNDLE_PATH}/Dev/${SETTINGS_BUNDLE_FILE}
SETTINGS_BUNDLE_PROD=${SETTINGS_BUNDLE_PATH}/Prod/${SETTINGS_BUNDLE_FILE}

unset SDKROOT

if mint list | grep -q 'LicensePlist'; then

    mint run LicensePlist --config-path licenses.yml --output-path $SETTINGS_BUNDLE_DEV --silence-mode
    
    rm -f ${SETTINGS_BUNDLE_PROD}/com.mono0926.LicensePlist/*.plist
    cp -r ${SETTINGS_BUNDLE_DEV}/com.mono0926.LicensePlist/ ${SETTINGS_BUNDLE_PROD}/com.mono0926.LicensePlist/
    cp -r ${SETTINGS_BUNDLE_DEV}/com.mono0926.LicensePlist.* ${SETTINGS_BUNDLE_PROD}
fi
