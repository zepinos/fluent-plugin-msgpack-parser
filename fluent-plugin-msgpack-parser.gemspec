# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "fluent-plugin-msgpack-parser"
  spec.version       = File.read("VERSION").strip
  spec.authors       = ["Tomás Rojas"]
  spec.email         = ["tmsrjs@gmail.com"]

  spec.summary       = %q{MessagePack parser for Fluentd}
  spec.homepage      = "https://github.com/bitex-la/fluent-plugin-msgpack-parser"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "fluentd"
  spec.add_runtime_dependency "msgpack"

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
