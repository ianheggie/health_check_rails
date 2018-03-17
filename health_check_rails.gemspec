
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "health_check_rails/version"

Gem::Specification.new do |spec|
  spec.name          = "health_check_rails"
  spec.version       = HealthCheckRails::VERSION
  spec.authors       = ["Ian Heggie"]
  spec.email         = ["ian@heggie.biz"]

  spec.summary       = %q{Simple health check of a Rails app for uptime monitoring with Pingdom, NewRelic, EngineYard or uptime.openacs.org etc}
  spec.description   = %q{This brings in all the plugins for a full rails app and is part of the Health Check v2 suite - See HealthCheck2 for further details}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "health_check2", ">= 0.0.1"
  spec.add_dependency "health_check_actionpack", ">= 0.0.1"
  spec.add_dependency "health_check_actionview", ">= 0.0.1"
  spec.add_dependency "health_check_activerecord", ">= 0.0.1"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
