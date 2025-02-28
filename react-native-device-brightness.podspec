require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name          = package["name"]
  s.version       = package["version"]
  s.summary       = package["description"]
  s.homepage      = "https://github.com/FidMe/react-native-device-brightness"
  s.license       = package["license"]
  s.authors       = package["author"]
  s.platform      = :ios, "9.0"
  s.source        = { :git => "#{s.homepage}", :tag => "#{s.version}" }
  s.source_files  = "RNDeviceBrightness/**/*.{h,m}"
  s.requires_arc  = true
  s.dependency 'React'
end