# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'last_github_issue_number/version'

Gem::Specification.new do |spec|
  spec.name          = "last_github_issue_number"
  spec.version       = LastGithubIssueNumber::VERSION
  spec.authors       = ["Torsten Schönebaum"]
  spec.email         = ["torsten.schoenebaum@sage.com"]

  spec.summary       = %q{Simple script that prints out the latest Github issue number for the current repo}
  spec.description   = %q{Simple script that prints out the latest Github issue number for the current repository.
                          Relies on Hub}
  spec.homepage      = "https://github.com/tosch/last_github_issue_number"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "github_api"

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
end
