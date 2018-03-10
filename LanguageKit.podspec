#
# Be sure to run `pod lib lint LanguageKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LanguageKit'
  s.version          = '0.0.1'
  s.summary          = 'LanguageKit is an iOS library for easy switch between different language. It use a CSV file for easy editing and sharing strings.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/garyworks/LanguageKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Gary Law' => 'gary@garylaw.me' }
  s.source           = { :git => 'https://github.com/garyworks/LanguageKit.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/garyworks'

  s.ios.deployment_target = '8.0'

  s.source_files = 'LanguageKit/Classes/**/*'
  s.swift_version = '4.0'
  
  # s.resource_bundles = {
  #   'LanguageKit' => ['LanguageKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
