# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'galakei/email/version'

Gem::Specification.new do |spec|
  spec.name          = "galakei-email"
  spec.version       = Galakei::Email::VERSION
  spec.authors       = ["Paul McMahon"]
  spec.email         = ["paul@doorkeeper.jp"]
  spec.description   = %q{Send email to Japanese phones}
  spec.summary       = %q{Japanese carriers provide each mobile subscriber with an email address. The email works basically the same as normal email, but with some caveats. This gem takes care of transforming normal mail into galakei mail.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "nokogiri"
  spec.add_dependency "activesupport"
  spec.add_dependency "sanitize"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
