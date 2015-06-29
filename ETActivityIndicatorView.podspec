Pod::Spec.new do |s|

  s.name         = "ETActivityIndicatorView"
  s.version      = "1.0"
  s.summary      = "Windows Phone like activity indicator for ios"
  s.homepage     = "https://github.com/EugeneTrapeznikov/ETActivityIndicatorView"
  s.screenshots  = "https://github.com/EugeneTrapeznikov/ETActivityIndicatorView/raw/master/demo_source/demo.gif?raw=true"

  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author             = { "Eugene" => "evgtrapeznikov@gmail.com" }
  s.social_media_url   = "ugin.co"
  
  s.platform     = :ios
  s.requires_arc = true
  s.source       = { :git => "https://github.com/EugeneTrapeznikov/ETActivityIndicatorView.git",
   :tag => "1.0" }

  s.source_files  = "ETActivityIndicatorView", "ETActivityIndicatorView/**/*.{h,m}"


end
