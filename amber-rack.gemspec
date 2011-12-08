# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "amber-rack/version"

Gem::Specification.new do |s|
  s.name        = "AmberRack"
  s.version     = AmberRack::VERSION
  s.authors     = ["JohnnyT"]
  s.email       = ["johnnyt@xan.do"]
  s.homepage    = ""
  s.summary     = %q{Smalltalk brought to the web}
  s.description = s.summary

  s.rubyforge_project = "amber-rack"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "sinatra"
  s.add_dependency "rack_dav"
  s.add_dependency "builder"
  s.add_dependency "sprockets"
  s.add_dependency "rack-sprockets"
  s.add_dependency "coffee-filter"
  s.add_dependency "haml"

  s.add_development_dependency "linecache19"
  s.add_development_dependency "ruby-debug19"
  # specify any dependencies here; for example:
  # s.add_runtime_dependency "rest-client"
end
