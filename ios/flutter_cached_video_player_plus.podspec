#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = 'flutter_cached_video_player_plus'
  s.version          = '0.0.3'
  s.summary          = 'Cached Video Player'
  s.description      = <<-DESC
Cached Video Player
                       DESC
  s.homepage         = 'https://github.com/woodjobber/flutter_cached_video_player'
  s.license          = { :type => 'BSD', :file => '../LICENSE' }
  s.author           = { 'Vikram Pratap Singh' => 'vikram@lazyarts.me' }
  s.source           = { :http => 'https://github.com/woodjobber/flutter_cached_video_player' }
  s.documentation_url = 'https://pub.dev/packages/flutter_cached_video_player_plus'
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'

  # KTVHTTPCache
  s.dependency 'KTVHTTPCache', '~> 2.0.0'
  
  s.platform = :ios, '12.0'
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }
end

