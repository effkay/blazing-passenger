# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "blazing-passenger/version"

Gem::Specification.new do |s|
  s.name        = "blazing-passenger"
  s.version     = Blazing::Passenger::VERSION
  s.authors     = ["Felipe Kaufmann"]
  s.email       = ["felipekaufmann@gmail.com"]
  s.homepage    = "https://github.com/effkay/blazing-passenger"
  s.summary     = %q{blazing recipes for passenger}
  s.description = %q{A collection of blazing recipes for passenger}

  s.rubyforge_project = "blazing-passenger"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "blazing"
  s.add_dependency "httparty"
end
