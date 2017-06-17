#!/usr/bin/env bash

function upload_ftp {
    echo Uploading ${1}: ${2}
    curl --ftp-create-dirs -T $2 -u "$FTP_USER:$FTP_PASSWORD" "ftp://$FTP_HOST/$TRAVIS_OS_NAME/"
}

ls -lR dedop-studio/dist/

# core

upload_ftp "miniconda" "$CONDA_INSTALLER_FILE"

# desktop

if [[ "$TRAVIS_OS_NAME" == "osx" ]]; then
    upload_ftp "dmg" "dedop-studio/dist/mac/DeDop*.dmg"
    upload_ftp "mac" "dedop-studio/dist/mac/DeDop*mac.zip"
else
    upload_ftp "AppImage" "dedop-studio/dist/DeDop*.AppImage"
    upload_ftp "tar.gz" "dedop-studio/dist/DeDop*.tar.gz"
    upload_ftp "zip" "dedop-studio/dist/DeDop*.zip"
fi
