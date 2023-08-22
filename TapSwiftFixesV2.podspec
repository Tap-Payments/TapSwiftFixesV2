Pod::Spec.new do |s|

    s.platform				= :ios
    s.ios.deployment_target	= '11.0'
	s.osx.deployment_target = '10.13'
    s.swift_versions		= ['4.0', '4.2', '5.0']
    s.name					= 'TapSwiftFixesV2'
    s.summary				= 'Useful additions that are missing in Swift.'
    s.requires_arc			= true
    s.version				= '1.0.3'
    s.license				= { :type => 'MIT', :file => 'LICENSE' }
    s.author				= { 'Tap Payments' => 'hello@tap.company' }
    s.homepage				= 'https://github.com/Tap-Payments/TapSwiftFixesV2'
    s.source				= { :git => 'https://github.com/Tap-Payments/TapSwiftFixesV2.git', :tag => s.version.to_s }
    s.requires_arc			= true
    s.default_subspecs		= 'CoreGraphics', 'Exceptions', 'Threading'
    
    s.subspec 'Appearance' do |appearance|
		
		s.ios.deployment_target	= '11.0'
	
        appearance.source_files = 'TapSwiftFixesiOS/Source/AppearanceFixes/*.{h,m}'
    
    end
    
    s.subspec 'CoreGraphics' do |coreGraphics|
		
		coreGraphics.ios.deployment_target	= '11.0'
		coreGraphics.osx.deployment_target	= '10.13'
	
        coreGraphics.source_files = 'Common/Source/CoreGraphicsFixes/*.{h,m}'
    
    end
    
    s.subspec 'Exceptions' do |exceptions|
		
		exceptions.ios.deployment_target	= '11.0'
		exceptions.osx.deployment_target	= '10.13'
	
        exceptions.source_files = 'Common/Source/ExceptionCatcher/*.{h,m}'
    
    end
    
    s.subspec 'Threading' do |threading|
		
		threading.ios.deployment_target	= '11.0'
		threading.osx.deployment_target	= '10.13'
	
        threading.source_files = 'Common/Source/ThreadingFixes/*.{swift}'
    
    end

end
