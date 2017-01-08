$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "okuribito_db/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "okuribito_db"
  s.version     = OkuribitoDb::VERSION
  s.authors     = ["ym"]
  s.email       = ["kiyoshi.kodama@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of OkuribitoDb."
  s.description = "TODO: Description of OkuribitoDb."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.0", ">= 5.0.0.1"

  s.add_development_dependency "sqlite3"
end
