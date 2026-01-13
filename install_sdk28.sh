#!/bin/bash

# Install SDK 28 manually
ANDROID_HOME=~/Library/Android/sdk
SDK_DIR=$ANDROID_HOME/platforms/android-28
BUILD_TOOLS_DIR=$ANDROID_HOME/build-tools/28.0.3

echo "Installing Android SDK 28..."

# Download and install platform
mkdir -p $SDK_DIR
cd /tmp
curl -o platform-28.zip https://dl.google.com/android/repository/platform-28_r06.zip
unzip -q platform-28.zip -d $ANDROID_HOME/platforms/android-28
rm platform-28.zip

# Download and install build-tools
mkdir -p $BUILD_TOOLS_DIR
curl -o build-tools-28.zip https://dl.google.com/android/repository/build-tools_r28.0.3-macosx.zip
unzip -q build-tools-28.zip -d /tmp/bt28
mv /tmp/bt28/android-*/* $BUILD_TOOLS_DIR/
rm -rf /tmp/bt28 build-tools-28.zip

echo "✅ SDK 28 installed!"
echo "Now run: ./gradlew app:assembleRelease"
