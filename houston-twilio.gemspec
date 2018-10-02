$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "houston/twilio/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name          = "houston-twilio"
  spec.version       = Houston::Twilio::VERSION
  spec.authors       = ["Bob Lail"]
  spec.email         = ["bob.lailfamily@gmail.com"]

  spec.summary       = "Integrates Houston with Twilio"
  spec.description   = "Allows Houston to receive texts via SMS and respond"
  spec.homepage      = "https://github.com/houston/houston-twilio"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]
  spec.test_files = Dir["test/**/*"]

  spec.add_dependency "houston-core", ">= 0.8.0.pre"
  spec.add_dependency "twilio-ruby", "~> 4.11.1"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake", "~> 10.0"
end
