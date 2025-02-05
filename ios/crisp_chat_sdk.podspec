#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint crisp_chat_sdk.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'crisp_chat_sdk'
  s.version          = '0.0.1'
  s.summary          = 'Crisp chat android and ios sdk'
  s.description      = <<-DESC
Crisp chat android and ios sdk
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.dependency 'Crisp', '>= 1.6.4'
  s.platform = :ios, '9.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
