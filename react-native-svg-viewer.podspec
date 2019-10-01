require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-svg-viewer"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  react-native-svg-viewer
                   DESC
  s.homepage     = "https://github.com/welldsagl/react-native-svg-viewer"
  s.license      = "MIT"
  # s.license    = { :type => "MIT", :file => "FILE_LICENSE" }
  s.authors      = { "Gabriele Prestifilippo" => "gabriele.prestifilippo@welld.ch" }
  s.platforms    = { :ios => "9.0", :tvos => "10.0" }
  s.source       = { :git => "https://github.com/welldsagl/react-native-svg-viewer.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,m,swift}"
  s.requires_arc = true

  s.dependency "React"

  # s.dependency "..."
end

