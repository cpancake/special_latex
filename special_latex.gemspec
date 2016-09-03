Gem::Specification.new do |spec|
  spec.name          = "special_latex"
  spec.version       = "1.0.0"
  spec.authors       = ["Andrew Rogers"]
  spec.email         = ["andrew@anime-night.com"]
  spec.description   = %q{Converts certain LaTeX special character commands into those special characters.}
  spec.summary       = %q{LaTeX special characters}
  spec.license       = "MIT"

  spec.files         = ["lib/special_latex.rb"]
  spec.test_files    = ["spec/special_latex_spec.rb"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rspec"
  spec.homepage = "https://github.com/cpancake/special_latex"
end
