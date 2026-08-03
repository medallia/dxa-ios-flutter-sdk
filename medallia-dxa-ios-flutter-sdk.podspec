#
#  Copyright © 2023 Medallia. Use subject to licensing terms.
#
#
# Be sure to run `pod lib lint medallia-dxa-ios-flutter-sdk.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "medallia-dxa-ios-flutter-sdk"
  s.version          = "4.0.1"
  s.summary          = "Medallia DXA iOS SDK (Flutter)"
  s.description      = "Flutter variant of Medallia DXA SDK for iOS. Supports iOS 15.0 and above."
  s.homepage         = "https://github.com/medallia/dxa-ios-flutter-sdk"

  s.license          = { 
    :type => "Commercial",
    :text => "Copyright © 2023 Medallia. Use subject to licensing terms."
  }

  s.authors          = { "Medallia" => "cocoapods-dxa@medallia.com" }

  s.source           = {
    :git => "https://github.com/medallia/dxa-ios-flutter-sdk.git",
    :tag => s.version.to_s
  }

  s.platform         = :ios, "15.0"
  s.ios.vendored_frameworks = "MedalliaDXAFlutter.xcframework"
  s.swift_version = "5.0"

  s.dependency 'medallia-mobile-bridge-ios-sdk', '~> 1.3.1'
end
