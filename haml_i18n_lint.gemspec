# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'haml_i18n_lint/version'

Gem::Specification.new do |spec|
  spec.name          = "haml_i18n_lint"
  spec.version       = HamlI18nLint::VERSION
  spec.authors       = ["Seiei Miyagi"]
  spec.email         = ["hanachin@gmail.com"]
  spec.summary       = "find out not translated yet plain text from your Haml template"
  spec.homepage      = "https://github.com/okinawarb/haml_i18n_lint"
  spec.license       = "MIT"
  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features|checksum)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 2.3.0'

  spec.add_dependency "haml", ">= 4.0.0", "< 5.1"
  spec.add_development_dependency "appraisal", "~> 2.2"
  spec.add_development_dependency "yard", "~> 0.9"
  spec.add_development_dependency "test-unit", "~> 3.2"
  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
end
