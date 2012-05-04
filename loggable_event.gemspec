# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "loggable_event/version"

Gem::Specification.new do |s|
  s.name        = "loggable_event"
  s.version     = LoggableEvent::VERSION
  s.authors     = ["Jazmin Schroeder"]
  s.email       = ["jazminschroeder@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Add logs to any model}
  s.description = %q{Add logging functionality to any model}

  s.rubyforge_project = "loggable_event"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_development_dependency "rspec"
  s.add_development_dependency 'sqlite3-ruby'
  s.add_development_dependency 'database_cleaner'
  s.add_dependency 'activerecord', '~> 3'
  # s.add_runtime_dependency "rest-client"
end
