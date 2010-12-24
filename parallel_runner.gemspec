# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{parallel_runner}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["mapserver2007"]
  s.date = %q{2010-12-24}
  s.description = %q{simple parallel processing library.}
  s.email = %q{mapserver2007@gmail.com}
  s.extra_rdoc_files = ["README.rdoc", "ChangeLog"]
  s.files = ["README.rdoc", "ChangeLog", "Rakefile", "lib/parallel_runner.rb"]
  s.homepage = %q{http://github.com/mapserver2007/parallel_runner}
  s.rdoc_options = ["--title", "parallel_runner documentation", "--charset", "utf-8", "--opname", "index.html", "--line-numbers", "--main", "README.rdoc", "--inline-source", "--exclude", "^(examples|extras)/"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{parallel_runner}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{simple parallel processing library.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
