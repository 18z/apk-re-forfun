#!/bin/bash

# Repack
apktool b -f -d $1

# keytool -genkey -v -keystore my-release-key.keystore -alias alias_name \
#         -keyalg RSA -keysize 2048 -validity 10000

# Sign the apk
jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 \
          -keystore my-release-key.keystore "$1/dist/$1.apk" alias_name

# Verify apk
jarsigner -verify -verbose -certs "$1/dist/$1.apk"

# Must be aligned for optimal loading
/home/dio/Android/Sdk/build-tools/27.0.3/zipalign -v 4 "$1/dist/$1.apk" "$1/dist/$1-aligned.apk"

