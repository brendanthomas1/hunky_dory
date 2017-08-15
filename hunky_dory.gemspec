$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "hunky_dory/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "hunky_dory"
  s.version     = HunkyDory::VERSION
  s.authors     = ["Brendan Thomas"]
  s.email       = ["bt331609@gmail.com"]
  s.homepage    = "https://github.com/brendanthomas1/hunky_dory"
  s.summary     = "For documenting feature changes"
  s.description = "Allows you to document feature changes from within your app"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.3"

  s.add_development_dependency "sqlite3"
end
