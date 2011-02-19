# -*- encoding: utf-8 -*-
# Copyright © 2011, José Pablo Fernández

$:.push File.expand_path("../lib", __FILE__)
require "hmap/version"

Gem::Specification.new do |s|
  s.name        = "hmap"
  s.version     = Hmap::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["J. Pablo Fernández"]
  s.email       = ["pupeno@pupeno.com"]
  s.homepage    = ""
  s.summary     = %q{A map for hashes that returns a hash}
  s.description = %q{A map for hashes that returs a hash}

  s.rubyforge_project = "hmap"

  s.files         = `git ls-files`.split("\n").grep(/^[^\.]/)
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
