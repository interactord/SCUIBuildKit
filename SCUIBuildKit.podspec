Pod::Spec.new do |s|

    s.name         = "SCUIBuildKit"
    s.version      = "1.0.2"
    s.summary      = "SCBuildKit is make UIView"
    s.description  = <<-DESC
    SCBuildKit aim to
  * Chainning property Attributes
                     DESC
  
    s.homepage     = "https://github.com/interactord/SCBuildKit"
    s.license      = { :type => "MIT", :file => "LICENSE.md" }
    s.authors      = { "Scoon Moon" => "interactord@gmail.com" }
    s.platform     = :ios
    s.platform     = :ios, "12.2"
    s.swift_version = '5.0'
    s.pod_target_xcconfig = {
      'SWIFT_VERSION' => '5.0'
    }
    s.source       = { :git => "https://github.com/interactord/SCBuildKit.git", :tag => s.version.to_s }
    s.source_files  = "SCUIBuildKit/**/*.swift"
    s.frameworks  = 'UIKit', 'Foundation'
    s.requires_arc     = true  
  
  end