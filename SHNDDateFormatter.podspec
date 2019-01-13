#
# Be sure to run `pod lib lint SHNDDateFormatter.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SHNDDateFormatter'
  s.version          = '1.0.4'
  s.summary          = 'Simple swift date string convertor'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
With this library you can convert your Date Strings that comes from API or anywhere else to any kinda Format , any kinda locale and any kinda calender that you need
                       DESC

  s.homepage         = 'https://github.com/shndrs/SHNDDateFormatter'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'sahandraeisi1994@gmail.com' => 'sahandraeisi@yahoo.com' }
  s.source           = { :git => 'https://github.com/shndrs/SHNDDateFormatter.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  
  s.ios.deployment_target = '9.3'
  s.osx.deployment_target = '10.12'
  s.watchos.deployment_target = "3.2"
  s.tvos.deployment_target = '10.2'

  s.swift_version = '4.0'
  s.source_files = 'SHNDDateFormatter/Classes/**/*'
  s.test_spec 'Tests' do |test_spec|
      test_spec.source_files = 'Tests/*.{h,m}'
      test_spec.dependency 'OCMock'
  end
  
  # s.resource_bundles = {
  #   'SHNDDateFormatter' => ['SHNDDateFormatter/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'Foundation'
  # s.dependency 'SHNDDateFormatter'
end
