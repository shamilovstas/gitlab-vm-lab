#!/usr/bin/env bash

sdkmanager=$ANDROID_SDK_ROOT/cmdline-tools/latest/bin/sdkmanager

yes | sdkmanager --licenses

$sdkmanager --install "build-tools;34.0.0"
$sdkmanager --install "extras;google;m2repository"
$sdkmanager --install "platforms;android-34"
$sdkmanager --install "tools"
$sdkmanager --install "platform-tools"
$sdkmanager --install "emulator"
$sdkmanager --install "system-images;android-34;google_apis;x86_64"