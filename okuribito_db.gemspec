$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "okuribito_db/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "okuribito_db"
  s.version     = OkuribitoDb::VERSION
  s.authors     = ["Yasuhiro Matsumura"]
  s.email       = ["ym.contributor@gmail.com"]
  s.homepage    = "https://github.com/muramurasan/okuribito_db"
  s.summary     = "OkuribitoDB is a Rails Engine that monitors table size and number of rows in database. Let's extract unused tables."
  s.description = "OkuribitoDB is a Rails Engine that monitors table size and number of rows in database. Let's extract unused tables."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", ">= 4.0.0"

  s.add_development_dependency "mysql2"
end
