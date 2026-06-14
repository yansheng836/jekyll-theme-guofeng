# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## 项目概述

国风（Guofeng）是一个 Jekyll 主题，融合中国传统文化元素与动漫美学，采用 B 站粉蓝配色方案。支持作为 Gem 主题或 GitHub Pages remote_theme 使用。

## 开发命令

```bash
# 本地预览（需要 Ruby + Bundler）
bundle install
bundle exec jekyll serve

# SCSS 语法校验（需要 dart sass）
tail -n +4 assets/css/style.scss | sass --no-source-map --load-path=_sass --stdin /dev/null

# JavaScript 语法校验
node --check assets/js/navigation.js

# HTML 语法校验
python -c "from lxml.html import fromstring; fromstring(open('path/to/file.html', encoding='utf-8').read())"
```

## 架构

### 核心结构

- `_layouts/default.html` — 唯一布局，组装 head/header/main/footer/toc
- `_includes/` — 组件模板：head（meta+CSS）、header（顶部横幅）、footer（页脚）、toc（悬浮目录）
- `_sass/` — 样式模块，通过 `assets/css/style.scss` 统一导入：variables → base → layout → components → responsive → syntax
- `assets/js/navigation.js` — 目录导航 + 代码块复制按钮，扫描 `.main-content` 中的 h2/h3 动态生成 TOC 面板，为 `.highlight` 块添加复制功能

### 样式体系

SCSS 变量定义在 `_variables.scss`，关键设计 token：
- `$bili-pink: #FB7299` / `$bili-blue: #00A1D6` — 主题色
- `$primary-gradient` — 粉蓝渐变
- `$content-width: 95%` / `$content-max-width: 1320px` — 内容区宽度

### 配置

`_config.yml` 中主题专属配置使用 `guofeng:` 命名空间（非 `theme:`，避免覆盖 Jekyll 的 theme 字段）：

```yaml
guofeng:
  show_toc: true
  wide_layout: true
```

### 部署

GitHub Actions 自动部署到 GitHub Pages（`.github/workflows/pages.yml`）。push 到 main 分支触发构建，Actions 版本保持最新以兼容 Node.js 24。

## 注意事项

- gemspec 的 `summary`/`description` 保持英文（RubyGems 规范），其他内容统一中文
- `footer.html` 使用 `site.github.*` 变量带 `default` fallback，兼容 GitHub Actions 部署模式
- `head.html` 使用 `site.time` 做 CSS 缓存标识，不依赖 `site.github.build_revision`（Actions 模式下为空）
- `@import` 在 Dart Sass 3.0 将废弃，后续需迁移至 `@use` 语法
