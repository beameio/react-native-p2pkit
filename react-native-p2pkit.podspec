require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-p2pkit"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  react-native-p2pkit
                   DESC
  s.platforms    = { :ios => "9.0" }

  s.source_files = "ios/**/*.{h,m,swift}"
  s.requires_arc = true

  s.dependency "p2pkit"

  s.authors      = { "Your Name" => "yourname@email.com" }
  s.homepage     = "https://github.com/beameio/react-native-p2pkit"
  s.source       = { :git => "https://github.com/beameio/react-native-p2pkit.git", :tag => "#{s.version}" }

end

