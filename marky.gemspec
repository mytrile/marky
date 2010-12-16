Gem::Specification.new do |s|
  s.name = "marky"
  s.version = "0.1.0"
  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["Mitko Kostov"]
  s.description = %q{Marky is a simple wrapper for converting strings/text to html using different markdown processors.}
  s.summary = %q{A gem to provide swappable markdown processors.}
  s.email = ["mitko.kostov@gmail.com"]
  s.homepage = "http://github.com/mytrile/marky"
  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {test}/*`.split("\n")
  s.require_paths = ["lib"]
end

