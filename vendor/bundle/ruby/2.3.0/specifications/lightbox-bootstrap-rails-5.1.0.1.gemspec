# -*- encoding: utf-8 -*-
# stub: lightbox-bootstrap-rails 5.1.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "lightbox-bootstrap-rails"
  s.version = "5.1.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.metadata = { "allowed_push_host" => "https://rubygems.org" } if s.respond_to? :metadata=
  s.require_paths = ["lib"]
  s.authors = ["Hyo Seong Choi"]
  s.date = "2017-01-30"
  s.description = "Wrapping the assets of Lightbox for Bootstrap 4 as a ruby gem."
  s.email = ["lucius.choi@gmail.com"]
  s.homepage = "https://github.com/luciuschoi/lightbox-bootstrap-rails"
  s.rubygems_version = "2.5.1"
  s.summary = "A gem built for the use of Lightbox for Bootstrap 4 as the rails assets pipeline."

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.9"])
      s.add_development_dependency(%q<rake>, ["~> 10.0"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.9"])
      s.add_dependency(%q<rake>, ["~> 10.0"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.9"])
    s.add_dependency(%q<rake>, ["~> 10.0"])
  end
end
