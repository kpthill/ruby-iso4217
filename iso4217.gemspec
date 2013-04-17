# -*- encoding: utf-8 -*-
require 'bundler/version'

Gem::Specification.new do |s|
  s.name        = "iso4217"
  s.version = 1

  s.required_rubygems_version = ">= 1.3.6"

  s.files        = Dir.glob("{spec,lib}/**/*") + %w(License.txt README.txt iso4217.csv Rakefile)
  s.require_path = 'lib'
end
