require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name = 'RcastriottaCapacitorSocialLogin'
  s.version = package['version']
  s.summary = package['description']
  s.license = package['license']
  s.homepage = package['repository']['url']
  s.author = package['author']
  s.source = { :git => package['repository']['url'], :tag => s.version.to_s }
  s.source_files = 'ios/Sources/**/*.{swift,h,m,c,cc,mm,cpp}'
  s.ios.deployment_target = '14.0'
  s.dependency 'Capacitor'
  s.dependency 'FBSDKCoreKit', '17.4.0'
  s.dependency 'FBSDKLoginKit', '17.4.0'
  s.dependency 'GoogleSignIn', '~> 8.0.0'
  s.dependency 'Alamofire'
  s.swift_version = '5.1'
end

# 