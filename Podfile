workspace 'MyFirstModule.xcworkspace'
platform :ios, '9.0'

use_frameworks!

# ignore all warnings from all pods
inhibit_all_warnings!

def shared_pods
    pod 'Swinject', '2.0.0'
end

xcodeproj 'App/App.xcodeproj'
xcodeproj 'Common/Dependencies/Dependencies.xcodeproj'

target :App do
  xcodeproj 'App/App.xcodeproj'
  shared_pods
end

target :Dependencies do
  xcodeproj 'Common/Dependencies/Dependencies.xcodeproj'
  shared_pods
end

target :Push do
  xcodeproj 'Modules/Push/Push.xcodeproj'
  shared_pods
end

target :Storage do
  xcodeproj 'Modules/Storage/Storage.xcodeproj'
  shared_pods
end

target :Logger do
  xcodeproj 'Modules/Logger/Logger.xcodeproj'
  shared_pods
end
