#
# Be sure to run `pod lib lint SHNDDateFormatter.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SHNDDateFormatter'
  s.version          = '1.2.0'
  s.summary          = 'Simple swift date string convertor'

  s.description      = <<-DESC
With this library you can convert your Date Strings that comes from API or anywhere else to any kinda Format , any kinda locale and any kinda calender that you need
                       DESC

  s.homepage         = 'https://github.com/shndrs/SHNDDateFormatter'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'sahandraeisi1994@gmail.com' => 'sahandraeisi@yahoo.com' }
  s.source           = { :git => 'https://github.com/shndrs/SHNDDateFormatter.git', :tag => s.version.to_s }
  
  s.ios.deployment_target = '9.3'
  s.watchos.deployment_target = "3.2"
  s.tvos.deployment_target = '10.2'

  s.swift_version = '4.0'
  s.source_files = 'SHNDDateFormatter/Classes/**/*'
  
  s.frameworks = 'Foundation'
end
