Pod::Spec.new do |s|
  s.name             = 'ChartFeature'
  s.version          = '0.1.0'
  s.summary          = 'A short description of ChartFeature.'

  s.description      = 'Feature para criação de Gráficos'

  s.homepage         = 'https://github.com/robixnai/ChartFeature'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'robixnai' => 'moreira_rob@hotmail.com' }
  s.source           = { :git => 'https://github.com/robixnai/ChartFeature.git', :tag => s.version.to_s }
  
  s.swift_version = '5.0'

  s.ios.deployment_target = '13.0'

  s.source_files = 'ChartFeature/Classes/**/*'
  
  s.default_subspecs = 'Release'
  
  s.subspec 'Release' do |release|
     release.vendored_frameworks = 'Framework/ChartFeature.framework'
  end

  s.dependency 'Charts'
  s.dependency 'TinyConstraints'
end
