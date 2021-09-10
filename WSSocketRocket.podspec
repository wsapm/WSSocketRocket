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
  
  s.subspec 'Internal' do |subs_internal|
    subs_internal.source_files       = 'SocketRocket/Internal/*.{h,m}'
    subs_internal.public_header_files = 'SocketRocket/Internal/*.h'
    
    subs_internal.subspec 'Delegate' do |subs_delegate|
      subs_delegate.source_files       = 'SocketRocket/Internal/Delegate/*.{h,m}'
      subs_delegate.public_header_files = 'SocketRocket/Internal/Delegate/*.h'
    end
    
    subs_internal.subspec 'IOConsumer' do |subs_ioconsumer|
      subs_ioconsumer.source_files       = 'SocketRocket/Internal/IOConsumer/*.{h,m}'
      subs_ioconsumer.public_header_files = 'SocketRocket/Internal/IOConsumer/*.h'
    end
    
    subs_internal.subspec 'Proxy' do |subs_proxy|
      subs_proxy.source_files       = 'SocketRocket/Internal/Proxy/*.{h,m}'
      subs_proxy.public_header_files = 'SocketRocket/Internal/Proxy/*.h'
    end
    
    subs_internal.subspec 'RunLoop' do |subs_runloop|
      subs_runloop.source_files       = 'SocketRocket/Internal/RunLoop/*.{h,m}'
      subs_runloop.public_header_files = 'SocketRocket/Internal/RunLoop/*.h'
    end
    
    subs_internal.subspec 'Security' do |subs_security|
      subs_security.source_files       = 'SocketRocket/Internal/Security/*.{h,m}'
      subs_security.public_header_files = 'SocketRocket/Internal/Security/*.h'
    end
    
    subs_internal.subspec 'Utilities' do |subs_utilities|
      subs_utilities.source_files       = 'SocketRocket/Internal/Utilities/*.{h,m}'
      subs_utilities.public_header_files = 'SocketRocket/Internal/Utilities/*.h'
    end
    
    
  end
    
  
end
