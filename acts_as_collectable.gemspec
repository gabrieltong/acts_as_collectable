$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "acts_as_collectable/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "acts_as_collectable"
  s.version     = ActsAsCollectable::VERSION
  s.authors     = ["Gabriel Tong"]
  s.email       = ["tongyangmath@gmail.com"]
  s.homepage    = "http://www.railsg.com"
  s.summary     = "Summary of ActsAsCollectable."
  s.description = "Description of ActsAsCollectable."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.13"

  s.add_development_dependency "sqlite3"
end
