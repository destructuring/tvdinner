# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

require "tvdinner/version"

Gem::Specification.new do |s|
  s.name        = "tvdinner"
  s.version     = ENV['EDIT_tvdinner'] ? "#{TVDinner::VERSION}.rc#{%x(git log --max-count=1 --pretty=format:%ct)}" : TVDinner::VERSION
  s.homepage    = "http://destructuring.org/tvdinner"
  s.license     = "Apache 2.0"

  s.executables  = %w(chef-local)
  s.test_files   = `git ls-files -- {spec,tasks}/*`.split("\n")
  s.files        = `git ls-files -- lib/* cookbooks/*`.split("\n") 

  s.files       += s.test_files
  s.files       += s.executables.map {|f| File.join("bin", f) }
  s.files       +=  %w(LICENSE NOTICE VERSION README.md)

  s.require_path = "lib"

  s.add_dependency "tvdinner"

  s.author      = "Tom Bombadil"
  s.email       = "amanibhavam@destructuring.org"
  s.summary     = "support for chef cookbooks as rubygems"
  s.description = "Spork utility, cookbooks for cookbook gems scaffolding, helper functions for chef-solo, compare modes"
end
