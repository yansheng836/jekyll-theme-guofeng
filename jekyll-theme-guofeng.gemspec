Gem::Specification.new do |s|
  s.name          = "jekyll-theme-guofeng"
  s.version       = "0.1.0"
  s.license       = "MIT"
  s.authors       = ["yansheng836"]
  s.email         = ["yansheng836@163.com"]
  s.homepage      = "https://github.com/yansheng836/jekyll-theme-guofeng"
  s.summary       = "A Jekyll theme with Chinese traditional style (Guofeng) for anime and data visualization"
  s.description   = "A Jekyll theme featuring Chinese traditional style (Guofeng), anime aesthetics, pink-blue color scheme, TOC navigation, and responsive design."

  s.files         = `git ls-files -z`.split("\x0").select { |f|
    f.match(%r{^(assets|_layouts|_includes|_sass|LICENSE|README)}i)
  }

  s.add_runtime_dependency "jekyll", "~> 4.3"
  s.add_runtime_dependency "jekyll-seo-tag", "~> 2.8"
end
