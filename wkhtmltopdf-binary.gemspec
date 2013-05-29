# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wkhtmltopdf/version'

Gem::Specification.new do |spec|
  spec.name          = "wkhtmltopdf-binary"
  spec.version       = Wkhtmltopdf::VERSION
  spec.authors       = ["Zakir Durumeric"]
  spec.email         = ["zakird@gmail.com"]
  spec.description   = %q[Provides binaries for WKHTMLTOPDF project in an easily accessible package.]
  spec.summary       = %q[Provides binaries for WKHTMLTOPDF project in an easily accessible package.]
  spec.homepage      = "https://github.com/zakird/wkhtmltopdf_binary_gem"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = []
  spec.executables   = %w[wkhtmltopdf]
  spec.require_path  = '.'
  spec.has_rdoc      = false

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end

