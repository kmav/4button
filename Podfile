source 'https://github.com/CocoaPods/Specs.git'

platform :ios, '11.0'

use_frameworks!
inhibit_all_warnings!

def shared_pods
    # Crash Report
    pod 'Fabric'
    pod 'Crashlytics'
    pod 'Instabug'

    # Database
    pod 'RealmSwift', '~> 3.14'
    pod 'SwiftyJSON', '~> 4.0'

    # Network
    pod 'ReachabilitySwift'
end

target '4-button' do
    # Shared pods
    shared_pods
end

target '4-buttonUITests' do
    # Shared pods
    shared_pods
end

target '4-buttonTests' do
  # Shared pods
  shared_pods
end

post_install do |installer|
  swift42Targets = []
  swift5Targets = ['RealmSwift', 'Realm', 'SwiftyJSON', 'ReachabilitySwift']

    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['SWIFT_VERSION'] = '4.1'
            config.build_settings['ENABLE_BITCODE'] = 'NO'
            config.build_settings['ARCHS'] = 'arm64'

            if config.name == 'Debug'
                config.build_settings['SWIFT_OPTIMIZATION_LEVEL'] = '-Onone'
            else
                config.build_settings['SWIFT_OPTIMIZATION_LEVEL'] = '-Owholemodule'
            end
        end

        if swift5Targets.include? target.name
          target.build_configurations.each do |config|
            config.build_settings['SWIFT_VERSION'] = '5'
          end
        end

        if swift42Targets.include? target.name
            target.build_configurations.each do |config|
                config.build_settings['SWIFT_VERSION'] = '4.2'
            end
        end
    end
end
