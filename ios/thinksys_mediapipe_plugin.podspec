#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint thinksys_mediapipe_plugin.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'thinksys_mediapipe_plugin'
  s.version          = '0.0.9'
  s.summary          = 'A new Flutter Plugin.'
  s.description      = <<-DESC
A new Flutter Plugin.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.resources        = 'Assets/**/*'
  s.dependency 'Flutter'
  s.dependency 'MediaPipeTasksVision', '~> 0.10.14'  # Specify the version number
  s.dependency 'MediaPipeTasksCommon', '~> 0.10.14'  # Specify the version number
  s.platform = :ios, '14.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
  s.ios.preserve_paths = 'MediaPipeTasksVision.xcframework', 'MediaPipeTasksCommon.xcframework'
  s.xcconfig = { 'OTHER_LDFLAGS' => '-framework MediaPipeTasksVision' }
  s.vendored_frameworks = 'MediaPipeTasksVision.xcframework', 'MediaPipeTasksCommon.xcframework'
  s.static_framework = true
end
