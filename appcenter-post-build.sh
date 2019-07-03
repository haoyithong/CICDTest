  #!/bin/sh
  
  xcodebuild \
  -workspace CICDTest.xcworkspace \
  -scheme CICDTest \
  -sdk iphonesimulator \
  -destination 'platform=iOS Simulator,name=iPhone 6,OS=12.2' \
  test