#
# Be sure to run `pod lib lint CCAnimatedTransitioningKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CCAnimatedTransitioningKit'
  s.version          = '0.1.1'
  s.summary          = 'CCAnimatedTransitioningKit is used to private animate template for opening book animation.'
  s.swift_version    = '4.0'
  
# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

 s.description      = 'CCAnimatedTransitioningKit is used to private animate template for opening book animation. CCAnimatedTransitioningKit 用于提供书籍打开类APP的数据打开动画，该动画提供了完整的动画结构，方便扩展和使用。'

  s.homepage         = 'https://github.com/Bogon/CCAnimatedTransitioningKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Bogon' => 'zhangqixcu@gmail.com.com' }
  s.source           = { :git => 'https://github.com/Bogon/CCAnimatedTransitioningKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'
  s.requires_arc = true

  s.source_files = 'CCAnimatedTransitioningKit/Classes/**/*'
  
  # s.resource_bundles = {
  #   'CCAnimatedTransitioningKit' => ['CCAnimatedTransitioningKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
