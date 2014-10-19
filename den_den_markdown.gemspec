# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'den_den_markdown/version'

Gem::Specification.new do |spec|
  spec.name          = "den_den_markdown"
  spec.version       = DenDenMarkdown::VERSION
  spec.authors       = ["Sho Kusano"]
  spec.email         = ["sho-kusano@mgnt-inc.jp"]
  spec.summary       = %q{TODO: Write a short summary. Required.}
  spec.description   = %q{TODO: Write a longer description. Optional.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", '~> 1.7'
  spec.add_development_dependency "rake", '~> 10.0'
  spec.add_development_dependency 'minitest', '~> 5.4.2'
  spec.add_development_dependency 'minitest-power_assert', '~> 0.0.3'
  spec.add_development_dependency 'minitest-reporters', '~> 1.0.6'

  spec.add_dependency 'html-pipeline'
  spec.add_dependency 'redcarpet'
end
