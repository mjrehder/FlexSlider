Pod::Spec.new do |s|
  s.name             = 'FlexSlider'
  s.version          = '1.0'
  s.license          = 'MIT'
  s.summary          = 'Flexible slider components with style'
  s.homepage         = 'https://github.com/mjrehder/FlexSlider.git'
  s.authors          = { 'Martin Jacob Rehder' => 'gitrepocon01@rehsco.com' }
  s.source           = { :git => 'https://github.com/mjrehder/FlexSlider.git', :tag => s.version }
  s.swift_version    = '5.0'
  s.ios.deployment_target = '12.0'

  s.dependency 'StyledLabel'
  s.dependency 'FlexControls'

  s.framework    = 'UIKit'
  s.source_files = 'FlexSlider/**/*.swift'
  s.requires_arc = true
end