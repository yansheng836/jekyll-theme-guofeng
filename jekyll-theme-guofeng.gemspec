Gem::Specification.new do |s|
  s.name          = "jekyll-theme-guofeng"
  s.version       = "0.0.1"
  s.license       = "MIT"
  s.authors       = ["yansheng836"]
  s.email         = ["sheng.yan836@gmail.com"]
  s.homepage      = "https://github.com/yansheng836/jekyll-theme-guofeng"
  s.summary       = "国风动漫风格的 Jekyll 主题"
  s.description   = "国风动漫风格的 Jekyll 主题，B站粉蓝配色、悬浮目录导航、响应式设计、表格数据展示优化。"

  s.files         = `git ls-files -z`.split("\x0").select { |f|
    f.match(%r{^(assets|_layouts|_includes|_sass|LICENSE|README)}i)
  }

  s.add_runtime_dependency "jekyll", "~> 4.3"
  s.add_runtime_dependency "jekyll-seo-tag", "~> 2.8"
end
