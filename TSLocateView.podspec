Pod::Spec.new do |s|
  s.name                = "TSLocateView"
  s.version             = "0.0.1"
  s.summary             = "TSLocateView is a city picker component. you can uses it to picker a city's name and coordinate."                          
  s.homepage            = "https://github.com/y500/TSLocateView"
  s.license             = { :type => 'MIT', :text =>  "请随意使用" }
  s.author              = { "fly2wind" => "https://github.com/y500/TSLocateView" }
  s.platform            = :ios
  s.source              = { :git => "https://github.com/y500/TSLocateView.git", :tag => "0.0.1" }
  s.source_files        = 'TSLocateView/Sources/*.{h,m,xib}'
  s.frameworks = 'UIKit', 'CoreGraphics', 'QuartzCore'
end
