# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

#source 'https://github.com/CocoaPods/Specs.git'
#source 'https://hythong:haoyi5649:@bitbucket.org/ekgmt/ekpods.git'

def available_pods
  pod 'Alamofire', '~> 4.7'
  pod 'AlamofireImage', '~> 3.3'
  pod 'Localize-Swift', '~> 2.0'
  pod 'lottie-ios', '~> 2.5'
  pod 'RealmSwift', '~> 3.7'
  pod 'OAStackView', '~> 1.0'
  pod 'SideMenu', '3.1.5'
  pod 'FSCalendar', '2.7.9'
  pod 'SwiftRangeSlider', '2.0.0'
  pod 'GoogleMaps', '2.6.0'
  pod 'JTMaterialSpinner', '~> 3.0'
  pod 'IQKeyboardManagerSwift', '~> 6.0.4'
  pod 'Firebase/Core', '~> 4.0.3'
  pod 'Fabric', '~> 1.9.0'
  pod 'Crashlytics', '~> 3.12.0'
  pod 'Cartography', '~> 3.0'
  pod 'TagListView', '~> 1.0'
  pod 'Socket.IO-Client-Swift', '~> 14.0.0'
  pod 'Firebase/Messaging'
  pod 'SwiftGen'
  pod 'EKNotifier', :git => 'https://hythong:haoyi5649@bitbucket.org/ekgmt/ek-notifier-ios.git', :branch => '0.2.2'
  pod 'Sentry', :git => 'https://github.com/getsentry/sentry-cocoa.git', :tag => '4.3.1'
end

post_install do |installer|
    installer.pods_project.targets.each do |target|
        if ['SwiftRangeSlider', 'SideMenu'].include? target.name
            target.build_configurations.each do |config|
                config.build_settings['SWIFT_VERSION'] = '4.0'
            end
        end
    end
end

target 'CICDTest' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!
  available_pods
  
  abstract_target 'Tests' do
    target 'CICDTestTests'
    pod 'Nimble'
  end
end

