Pod::Spec.new do |s|
  s.name         = "TSLocateView"
  s.version      = "1.0"
  s.summary      = "TSLocateView is a city picker component. you can uses it to picker a city's name and coordinate. This component is part of the most popular social network in China, DouDouYou兜兜友"
  s.homepage     = "https://github.com/fly2wind/TSLocateView"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "fly2wind" => "qsma@thoughtworks.com" }
  s.source       = { :git => "https://github.com/y500/TSLocateView.git", :tag => s.version.to_s }
  s.platform     = :ios, '5.0'
  s.framework  = 'UIKit', 'CoreGraphics', 'QuartzCore'
  s.requires_arc = true
  s.default_subspec = 'Core'

  s.subspec 'Core' do |core|
    core.source_files = 'OLImage.{h,m}', 'OLImageView.{h,m}', 'OLImageViewDelegate.h'
  end

  s.subspec 'AFNetworking' do |af|
    af.dependency 'OLImageView/Core'
    af.dependency 'AFNetworking', '~> 1.0'
    af.source_files = "Categories/AFImageRequestOperation+OLImage.{h,m}"
  end

  s.subspec 'AFNetworking2' do |ss|
    s.platform = :ios, '6.0'
    ss.dependency 'OLImageView/Core'
    ss.dependency 'AFNetworking', '~> 2.0'
    ss.source_files = "AFNetworking/OL*.{h,m}"
  end
end