Gem::Specification.new do |spec|
  spec.name          = "lita-rules"
  spec.version       = "0.0.1"
  spec.authors       = ["Nate Holland"]
  spec.email         = ["nateh@spiceworks.com"]
  spec.description   = "Every robot needs to know the rules"
  spec.summary       = "lita bot can tell you the rules for a robot"
  spec.homepage      = "https://github.com/natesholland/lita-rules"
  spec.license       = "MIT"
  spec.metadata      = { "lita_plugin_type" => "handler" }

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "lita", ">= 3.0"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "pry-byebug"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rack-test"
  spec.add_development_dependency "rspec", ">= 3.0.0"
end
