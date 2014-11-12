Pod::Spec.new do |s|
  s.name             = "URBNConvenience"
  s.version          = "0.1"
  s.summary          = "A pod for URBN convenience functions, macros, and categories."
  s.homepage         = "https://github.com/urbn/URBNConvenience"
  s.license          = 'MIT'
  s.author           = { "jgrandelli" => "jasongrandelli@gmail.com" }
  s.source           = { :git => "https://github.com/urbn/URBNConvenience.git", :tag => s.version.to_s }

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'
end