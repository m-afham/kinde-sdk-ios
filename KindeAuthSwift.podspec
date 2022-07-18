Pod::Spec.new do |s|
  s.name             = 'KindeAuthSwift'
  s.version          = '0.1.0'
  s.swift_version    = '5.6.1'
  s.summary          = 'Kinde SDK for Swift iOS.'
  s.description      = <<-DESC
                       Kinde SDK for authentication on iOS.
                       DESC

  s.homepage         = 'https://github.com/kinde-oss/kinde-auth-swift'
  s.license          = { :type => 'Apache-2.0', :file => 'LICENSE' }
  s.author           = { 'Kinde' => 'engineering@kinde.com' }
  s.source           = { :git => 'https://github.com/kinde-oss/kinde-auth-swift.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'

  s.source_files = 'KindeAuthSwift/Classes/**/*'
  
  s.dependency 'AppAuth'
  s.dependency 'SwiftKeychainWrapper'
end