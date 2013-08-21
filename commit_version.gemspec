$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "commit_version/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "commit_version"
  s.version     = CommitVersion::VERSION
  s.authors     = ["Destan Sarpkaya"]
  s.email       = ["destan@kodgemisi.com"]
  s.homepage    = "http://github.com/kodgemisi/commit-version"
  s.summary     = "Makes your application directories git commit version available as a config variable."
  s.description = "Makes your application directories git commit version available as a config variable."
  s.license     = "LGPL"

  s.files = Dir["{app,config,db,lib}/**/*", "Rakefile", "README.md", "LICENSE", "GPL"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.0"

  s.add_development_dependency "sqlite3"
end
