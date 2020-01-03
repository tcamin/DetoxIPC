Pod::Spec.new do |s|
  s.name             = 'DetoxIPC'
  s.version          = '0.0.1'
  s.summary          = 'bi-directional inter-process remote invocation library for Apple platforms'
  s.description      = <<-DESC
  DetoxIPC is an asynchronous, bi-directional inter-process remote invocation library for Apple platforms with an interface similar to Apple's NSXPCConnection API.
                       DESC

  s.homepage         = 'https://github.com/wix/DetoxIPC'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Leo Natan' => '' }
  s.source           = { :git => 'https://github.com/wix/DetoxIPC.git', :tag => s.version.to_s }
  s.ios.deployment_target = '10.0'
  s.osx.deployment_target = '10.14'

  s.requires_arc = false
  s.requires_arc = ['DetoxIPC/DTXIPC*.m', 'DetoxIPC/_DTXIPCDistantObject.m', 'DetoxIPC/_DTXIPCLocalObject.m']
  s.source_files = 'DetoxIPC/**/*.{m,h}'
  s.public_header_files = ['DetoxIPC/DTXIPCConnection.h', 'DetoxIPC/DTXIPCBase.h']
  s.prefix_header_file = 'DetoxIPC/DetoxIPC.pch'
end