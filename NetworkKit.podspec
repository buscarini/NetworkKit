Pod::Spec.new do |s|
  s.name             = 'NetworkKit'
  s.version          = '0.3.1'
  s.summary          = 'Swift library for improving REST network calls'

  s.description      = <<-DESC
 NetworkKit defines a request model where you can fill all the information of an API request. Then you can use a Service to actually perform the effects.
                       DESC

  s.homepage         = 'https://github.com/buscarini/networkkit'

  s.license = "MIT"
  
  s.author           = { 'José Manuel Sánchez' => 'buscarini@gmail.com' }
  s.source           = { :git => 'git@github.com:buscarini/networkkit.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = "10.9"
  s.tvos.deployment_target = "9.0"
  s.watchos.deployment_target = "2.0"

  s.source_files  = "Sources", "Sources/**/*.swift"
  
  s.swift_version = '4.2'

end
