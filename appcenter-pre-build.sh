#!/bin/sh
if [ -r Podfile ] ; then
  pod install
  xcodebuild \
  -workspace CICDTest.xcworkspace \
  -scheme CICDTest \
  -sdk iphonesimulator \
  -destination 'platform=iOS Simulator,name=iPhone 6,OS=8.1' \
  test
fi