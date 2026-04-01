Gem::Specification.new do |spec|
  spec.name          = "jekyll-theme-bobby"
  spec.version       = JekyllThemeBobby::VERSION
  spec.authors       = ["Your Name"]
  spec.email         = ["you@example.com"]

  spec.summary       = "A Jekyll theme for chapter-based book websites"
  spec.description   = "A minimal Jekyll theme with left chapter navigation and centered reading layout."
  spec.homepage      = "https://example.com"
  spec.license       = "MIT"

  spec.files         = Dir.glob("**/*", File::FNM_DOTMATCH).reject do |f|
    f.match?(%r{(^|/)(\.git|\.bundle|_site|Gemfile\.lock|pkg|coverage|\.DS_Store)$})
  end
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "jekyll", "~> 4.3"
  spec.add_development_dependency "bundler", "~> 2.0"
end
