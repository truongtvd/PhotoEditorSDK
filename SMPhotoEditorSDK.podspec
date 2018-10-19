#
# Be sure to run `pod lib lint SMPhotoEditorSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SMPhotoEditorSDK'
  s.version          = '0.1.0'
  s.summary          = 'SMARTMOVE'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
SMARTMOVE SMARTMOVE SMARTMOVE SMARTMOVE SMARTMOVE SMARTMOVE SMARTMOVE SMARTMOVE
                       DESC

  s.homepage         = 'https://github.com/truongtvd/PhotoEditorSDK'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'dongka195@live.com' => 'dongka195@live.com' }
  s.source           = { :git => 'https://github.com/truongtvd/PhotoEditorSDK.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  s.swift_version = '4.0'
  s.source_files = 'SMPhotoEditorSDK/Classes/**/*'
  s.static_framework = true
  # s.resource_bundles = {
  #   'SMPhotoEditorSDK' => ['SMPhotoEditorSDK/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
   s.frameworks = 'UIKit','CoreImage'
  # s.dependency 'AFNetworking', '~> 2.3'
end
