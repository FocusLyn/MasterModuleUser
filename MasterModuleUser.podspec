#
# Be sure to run `pod lib lint MasterModuleUser.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MasterModuleUser'
  s.version          = '0.1.0'
  s.summary          = 'A short description of MasterModuleUser.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/FocusLyn/MasterModuleUser'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'FocusLyn' => 'nsstring@foxmail.com' }
  s.source           = { :git => 'https://github.com/FocusLyn/MasterModuleUser.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
  s.default_subspecs = 'Classes'
  
  # s.resource_bundles = {
  #   'MasterModuleUser' => ['MasterModuleUser/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  
  s.subspec 'Classes' do |sp|
      
      #Net
      sp.subspec 'Net' do |ssp|
          ssp.source_files = 'MasterModuleUser/Classes/Net/*.{h,m}'
          ssp.frameworks = 'UIKit', 'Security','CoreFoundation'
          ssp.dependency 'AFNetworking'
      end
      
      #View
      sp.subspec 'View' do |ssp|
          ssp.source_files = 'MasterModuleUser/Classes/View/*.{h,m}'
          ssp.frameworks = 'UIKit'
          ssp.dependency 'Masonry'
      end
      
      #ViewController
      sp.subspec 'ViewController' do |ssp|
          ssp.source_files = 'MasterModuleUser/Classes/ViewController/*.{h,m}'
          ssp.frameworks = 'UIKit', 'Security','CoreFoundation'
          ssp.dependency 'Masonry'
          ssp.dependency 'MasterModuleUser/Classes/Net'
          ssp.dependency 'MasterModuleUser/Classes/View'
      end
  end
  
end
