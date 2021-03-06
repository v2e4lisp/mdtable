# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'mdtable.rb'

Gem::Specification.new do |spec|
  spec.name          = "mdtable"
  spec.version       = MDTable::VERSION
  spec.authors       = ["wenjun.yan"]
  spec.email         = ["mylastnameisyan@gmail.com"]
  spec.summary       = %q{convert 2D array to markdown table}
  spec.description   = %q{convert 2D array to markdown table}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
