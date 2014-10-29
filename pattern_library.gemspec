$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "pattern_library/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "pattern_library"
  s.version     = PatternLibrary::VERSION
  s.authors     = ["Ryan Ahearn"]
  s.email       = ["ryan.c.ahearn@gmail.com"]
  s.homepage    = "https://github.com/rahearn/pattern_library"
  s.summary     = "Pluggable pattern library."
  s.description = "Rails Engine-based CSS pattern library"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.1.0"

  s.add_development_dependency "sqlite3"
end
