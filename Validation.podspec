Pod::Spec.new do |spec|

  spec.name         = "Validation"
  spec.version      = "1.0.0"
  spec.summary      = "This is the best validation framework."
  spec.description  = "This is the best validation framework to use for valodations."
  spec.homepage     = "https://github.com/aditya-yagi1044/Validation/tree/main"
  spec.author             = { "Aditya Tyagi" => "aditya.tyagi3@soprabanking.com" }
  spec.platform     = :ios, "15.0"
  spec.source       = { :git => "https://github.com/aditya-yagi1044/Validation.git", :tag => spec.version.to_s }
  spec.source_files  = "TestPod/**/*.{swift}"
  spec.swift_version = "5.0"
end
