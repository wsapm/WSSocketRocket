Pod::Spec.new do |s|
  s.name               = 'WSSocketRocket'
  s.version            = '1.0'
  s.summary            = 'A conforming WebSocket (RFC 6455) client library for iOS, macOS and tvOS.'
  s.homepage           = 'https://www.wangsu.com'
  s.authors            = { 'wsapm' => 'vpclient_coop@wangsu.com' }
  s.license            = { :type => 'MIT', :file => 'LICENSE' }
  s.source             = { :git => 'https://github.com/wsapm/WSSocketRocket.git', :tag => s.version.to_s }
  s.requires_arc       = true
  
  s.source_files       = 'SocketRocket/*.{h,m}',
                         'SocketRocket/Internal/*.{h,m}',
                         'SocketRocket/Internal/Delegate/*.{h,m}',
                         'SocketRocket/Internal/IOConsumer/*.{h,m}',
                         'SocketRocket/Internal/Proxy/*.{h,m}',
                         'SocketRocket/Internal/RunLoop/*.{h,m}',
                         'SocketRocket/Internal/Security/*.{h,m}',
                         'SocketRocket/Internal/Utilities/*.{h,m}'
  
  s.public_header_files = 'SocketRocket/*.h'

  s.ios.deployment_target  = '6.0'
  s.osx.deployment_target  = '10.8'
  s.tvos.deployment_target = '9.0'

  s.ios.frameworks     = 'CFNetwork', 'Security'
  s.osx.frameworks     = 'CoreServices', 'Security'
  s.tvos.frameworks    = 'CFNetwork', 'Security'
  s.libraries          = 'icucore'
  
    
  
end
