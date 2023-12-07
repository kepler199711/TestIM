#
#  Be sure to run `pod spec lint ZegoExpressEngine.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#
require 'cgi'

Pod::Spec.new do |spec|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  spec.name         = "ZIM_510"
  spec.version      = "2.12.0"
  spec.summary      = "Zego ZIM SDK for iOS and macOS"

  spec.description  = "ZIM SDK for iOS and macOS by ZEGO."

  spec.homepage     = "https://www.zego.im/en"
  spec.documentation_url = "https://doc-en.zego.im"

  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  spec.license      = { :type => "Copyright", :text => "Copyright © 2015-2023 ZEGO. All Rights Reserved.\n" }

  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  spec.author             = {"ZEGO" => "zego.im"}

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  spec.ios.deployment_target  = "11.0"


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  spec.source       = { :http => "https://storage.zego.im//zim/sdk/ios/2.12.1.2108/ZIM-ios-shared-objc.zip",
                        :sha1 => "8b5dad6669c7d507e44fd6da63a077389474a1a0" }

  # Video english framework is used by default
  # spec.default_subspec = 'Video'

  # ――― Project Settings ―――――――――――――――――――――――――――――――――――――

  spec.requires_arc = true

  # SDK does not contain a i386 slice.
  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }

  spec.vendored_frameworks = "release/ZIM.xcframework"

end
