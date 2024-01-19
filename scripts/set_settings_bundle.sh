#!/bin/sh

# Name of the resource we're selectively copying
SETTINGS_BUNDLE_FILE=Settings.bundle

SETTINGS_BUNDLE_FOLDER=${PROJECT_DIR}/${TARGET_NAME}/Resources/SettingsBundles

SETTINGS_BUNDLE_DEV=${SETTINGS_BUNDLE_FOLDER}/Dev/${SETTINGS_BUNDLE_FILE}
SETTINGS_BUNDLE_PROD=${SETTINGS_BUNDLE_FOLDER}/Prod/${SETTINGS_BUNDLE_FILE}

# Make sure the dev version of Settings.bundle exists
echo "Looking for ${SETTINGS_BUNDLE_FILE} in ${SETTINGS_BUNDLE_DEV}"
if [ ! -d ${SETTINGS_BUNDLE_DEV} ]
then
    echo "No Development Settings.bundle found. Please ensure it's in the proper directory."
    exit 1
fi

# Make sure the prod version of Settings.bundle exists
echo "Looking for ${SETTINGS_BUNDLE_FILE} in ${SETTINGS_BUNDLE_PROD}"
if [ ! -d ${SETTINGS_BUNDLE_PROD} ]
then
    echo "No Production Settings.bundle found. Please ensure it's in the proper directory."
    exit 1
fi

# Get a reference to the destination location for the Settings.bundle
if [ "${SWIFT_PLATFORM_TARGET_PREFIX}" == "macos" ]
then
    SETTINGS_BUNDLE_DESTINATION=${BUILT_PRODUCTS_DIR}/${CONTENTS_FOLDER_PATH}/Resources
else
    SETTINGS_BUNDLE_DESTINATION=${BUILT_PRODUCTS_DIR}/${PRODUCT_NAME}.app
fi

echo "Will copy ${SETTINGS_BUNDLE_FILE} to final destination: ${SETTINGS_BUNDLE_DESTINATION}"

# Copy over the prod Settings.bundle for Release builds
if [ ${CONFIGURATION} == "Release" ]
then
    echo "Using ${SETTINGS_BUNDLE_PROD}"
    cp -rf "${SETTINGS_BUNDLE_PROD}" "${SETTINGS_BUNDLE_DESTINATION}"
else
    echo "Using ${SETTINGS_BUNDLE_DEV}"
    cp -rf "${SETTINGS_BUNDLE_DEV}" "${SETTINGS_BUNDLE_DESTINATION}"
fi
