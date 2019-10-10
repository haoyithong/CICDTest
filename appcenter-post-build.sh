  #!/bin/sh
  
  xcodebuild \
  -workspace CICDTest.xcworkspace \
  -scheme CICDTest \
  -sdk iphonesimulator \
  -destination 'platform=iOS Simulator,name=iPhone 11 pro max,OS=13.1' \
  test
