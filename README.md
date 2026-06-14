# Jekyll Theme Guofeng

一个国风动漫风格的 Jekyll 主题，融合中国传统文化元素与现代动漫美学。

## 特性

- B站粉蓝配色方案（动漫国风）
- 左侧悬浮目录导航
- 响应式设计，支持移动端
- 表格数据展示优化
- 图表展示支持
- 宽屏布局

## 安装

### 方式一：直接使用 GitHub Pages

在 `_config.yml` 中添加：

```yaml
remote_theme: yansheng836/jekyll-theme-guofeng
```

### 方式二：作为 Gem 主题

在 `Gemfile` 中添加：

```ruby
gem "jekyll-theme-guofeng"
```

然后在 `_config.yml` 中设置：

```yaml
theme: jekyll-theme-guofeng
```

## 配置

在 `_config.yml` 中可以自定义以下配置：

```yaml
title: 网站标题
description: 网站描述
lang: zh-CN  # 语言设置

# 主题特定配置
theme:
  show_toc: true  # 是否显示目录导航
  wide_layout: true  # 是否使用宽屏布局
```

## 目录结构

```
├── _layouts/
│   └── default.html      # 默认布局
├── _includes/
│   ├── head.html         # 头部
│   ├── header.html       # 顶部横幅
│   ├── footer.html       # 底部
│   └── toc.html          # 目录导航
├── _sass/
│   ├── _variables.scss   # 变量定义
│   ├── _base.scss        # 基础样式
│   ├── _layout.scss      # 布局样式
│   ├── _components.scss  # 组件样式
│   └── _responsive.scss  # 响应式样式
├── assets/
│   ├── css/
│   │   └── style.scss    # 主样式文件
│   ├── js/
│   │   └── navigation.js # 导航脚本
│   └── images/
├── docs/                 # 文档
├── _config.yml           # 示例配置
├── Gemfile
└── jekyll-theme-guofeng.gemspec
```

## 使用示例

### 表格展示

```markdown
| 列1 | 列2 | 列3 |
|:----|----:|:---:|
| 左对齐 | 右对齐 | 居中 |
```

### 图表展示

```markdown
![图表描述](assets/images/chart.png)
```

## 许可证

MIT License
