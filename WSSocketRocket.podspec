Pod::Spec.new do |s|
  s.name               = 'WSSocketRocket'
  s.version            = '1.0'
  s.summary            = 'A conforming WebSocket (RFC 6455) client library for iOS, macOS and tvOS.'
  s.homepage           = 'https://www.wangsu.com'
  s.authors            = { 'wsapm' => 'vpclient_coop@wangsu.com' }
  s.license            = { :type => 'MIT', :file => 'LICENSE' }
  s.source             = { :git => 'https://github.com/wsapm/WSSocketRocket.git', :tag => s.version.to_s }
  s.requires_arc       = true
  
  s.source_files       = 'SocketRocket/*.{h,m}'
  s.public_header_files = 'SocketRocket/*.h'

  s.ios.deployment_target  = '6.0'
  s.osx.deployment_target  = '10.8'
  s.tvos.deployment_target = '9.0'

  s.ios.frameworks     = 'CFNetwork', 'Security'
  s.osx.frameworks     = 'CoreServices', 'Security'
  s.tvos.frameworks    = 'CFNetwork', 'Security'
  s.libraries          = 'icucore'
  
  s.dependency 'SocketRocket/Internal'
  s.dependency 'SocketRocket/Internal/Delegate'
  s.dependency 'SocketRocket/Internal/IOConsumer'
  s.dependency 'SocketRocket/Internal/Proxy'
  s.dependency 'SocketRocket/Internal/RunLoop'
  s.dependency 'SocketRocket/Internal/Security'
  s.dependency 'SocketRocket/Internal/Utilities'
  
  s.subspec 'Internal' do |Internal|
    Internal.source_files       = 'SocketRocket/Internal/*.{h,m}'
    Internal.public_header_files = 'SocketRocket/Internal/*.h'
    
    Internal.subspec 'Delegate' do |Delegate|
      Delegate.source_files       = 'SocketRocket/Internal/Delegate/*.{h,m}'
      Delegate.public_header_files = 'SocketRocket/Internal/Delegate/*.h'
    end
    
    Internal.subspec 'IOConsumer' do |IOConsumer|
      IOConsumer.source_files       = 'SocketRocket/Internal/IOConsumer/*.{h,m}'
      IOConsumer.public_header_files = 'SocketRocket/Internal/IOConsumer/*.h'
    end
    
    Internal.subspec 'Proxy' do |Proxy|
      Proxy.source_files       = 'SocketRocket/Internal/Proxy/*.{h,m}'
      Proxy.public_header_files = 'SocketRocket/Internal/Proxy/*.h'
    end
    
    Internal.subspec 'RunLoop' do |RunLoop|
      RunLoop.source_files       = 'SocketRocket/Internal/RunLoop/*.{h,m}'
      RunLoop.public_header_files = 'SocketRocket/Internal/RunLoop/*.h'
    end
    
    Internal.subspec 'Security' do |Security|
      Security.source_files       = 'SocketRocket/Internal/Security/*.{h,m}'
      Security.public_header_files = 'SocketRocket/Internal/Security/*.h'
    end
    
    Internal.subspec 'Utilities' do |Utilities|
      Utilities.source_files       = 'SocketRocket/Internal/Utilities/*.{h,m}'
      Utilities.public_header_files = 'SocketRocket/Internal/Utilities/*.h'
    end
    
    
  end
    
  
end
