# -*- encoding: utf-8 -*-
require File.expand_path("../lib/historyjs/rails/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "historyjs-rails"
  s.version     = Historyjs::Rails::VERSION
  s.platform    = Gem::Platform::RUBY
  s.author      = "Phil Ostler"
  s.email       = "philostler@gmail.com"
  s.homepage    = "http://github.com/philostler/historyjs-rails"
  s.summary     = %q{History.js for Rails}
  s.description = %q{Provides History.js for use with Rails 3}

  s.add_dependency "railties", "=> 3.0"

  s.add_development_dependency "rspec", "~> 2.0"

  s.files = Dir[".gitignore"] +
            Dir[".rspec"] +
            Dir["Gemfile"] +
            Dir["historyjs-rails.gemspec"] +
            Dir["LICENSE"] +
            Dir["Rakefile"] +
            Dir["README.md"] +
            Dir["**/*.js"] +
            Dir["**/*.rb"]
  s.require_paths = ["lib"]
end
