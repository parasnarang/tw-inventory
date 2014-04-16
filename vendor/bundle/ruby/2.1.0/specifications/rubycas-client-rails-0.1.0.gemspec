# -*- encoding: utf-8 -*-
# stub: rubycas-client-rails 0.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "rubycas-client-rails"
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Matt Zukowski"]
  s.date = "2011-08-13"
  s.description = "Rails plugin for using the RubyCAS-Client as a controller filter."
  s.email = "matt dot zukowski at utoronto dot ca"
  s.homepage = "http://rubycas-client.rubyforge.org"
  s.rdoc_options = ["--main", "README.txt"]
  s.rubyforge_project = "rubycas-client"
  s.rubygems_version = "2.2.2"
  s.summary = "RubyCAS-Client Railtie for Rails 3.0."

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, [">= 3.0.0"])
      s.add_runtime_dependency(%q<rubycas-client>, [">= 2.2.0"])
    else
      s.add_dependency(%q<rails>, [">= 3.0.0"])
      s.add_dependency(%q<rubycas-client>, [">= 2.2.0"])
    end
  else
    s.add_dependency(%q<rails>, [">= 3.0.0"])
    s.add_dependency(%q<rubycas-client>, [">= 2.2.0"])
  end
end
