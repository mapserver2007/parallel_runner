# -*- encoding: utf-8 -*-
Gem::Specification.new do |gem|
  gem.authors       = ["mapserver2007"]
  gem.email         = ["mapserver2007@gmail.com"]
  gem.description   = %q{Simple parallel processing library.}
  gem.summary       = %q{Simple parallel processing library.}
  gem.homepage      = "https://github.com/mapserver2007/parallel_runner"
  gem.files         = `git ls-files`.split($\)
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "parallel_runner"
  gem.require_paths = ["lib"]
  gem.version       = '0.0.3'
end
