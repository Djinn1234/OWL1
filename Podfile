platform :ios, '9.0'

target 'OWL' do
  
  use_frameworks!

  # Pods for OWL
  pod 'Firebase'
  pod 'Firebase/Auth'
  pod 'Firebase/Database'
  pod 'SVProgressHUD'
  pod 'ChameleonFramework'
end
post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['CLANG_WARN_DOCUMENTATION_COMMENTS'] = 'NO'
        end
    end
end
