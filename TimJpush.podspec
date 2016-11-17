Pod::Spec.new do |s|
  s.name                  = "TimJpush"
  s.version               = "1.0.5"
  s.summary               = "简化推送的代码逻辑,这个使用的 jpush 作为拓展,只需要设置3方 sdk 的 key 和 一个 收到推送的 block 即可"
  s.homepage              = "https://github.com/timRabbit/TimJpush"
  s.social_media_url      = "https://github.com/timRabbit/TimJpush"
  s.platform     = :ios,'8.0'
  s.license               = { :type => "MIT", :file => "LICENSE" }
  s.author                = { " tim" => "491590253@qq.com" }
  s.source                = { :git => "https://github.com/timRabbit/TimJpush.git",:tag => '1.0.5' }
  s.ios.deployment_target = "6.0"
  s.requires_arc          = true
  s.framework             = "CoreFoundation","Foundation","CoreGraphics","Security","UIKit"
  s.library		= "z.1.1.3","stdc++","sqlite3"
  s.source_files = 'TimJpush'
  #s.resources = 'SIDADView/*.{bundle}'
  s.dependency 'XAspect'
  s.dependency 'TimCore/TimCore'
  s.dependency 'Jpush'
  s.ios.frameworks = 'UserNotifications'


#  s.subspec 'YMCitySelect' do |sp|
#   sp.source_files = 'YMCitySelect/*.{h,m,mm}'
  #  sp.resources   = "Extend/**/*.{png}"
#   sp.requires_arc = true
#   sp.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libz, $(SDKROOT)/usr/include/libxml2', 'CLANG_CXX_LANGUAGE_STANDARD' => 'gnu++0x', 'CLANG_CXX_LIBRARY' => 'libstdc++', 'CLANG_WARN_DIRECT_OBJC_ISA_USAGE' => 'YES'}
   
  #  sp.dependency 'FontIcon'
   # sp.prefix_header_contents = '#import "EasyIOS.h"'
#  end
end
