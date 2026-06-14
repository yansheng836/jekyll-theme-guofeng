# Jekyll Theme Guofeng

一个国风动漫风格的 Jekyll 主题，融合中国传统文化元素与现代动漫美学。

## 特性

- B站粉蓝配色方案（动漫国风）
- 左侧悬浮目录导航
- 代码语法高亮（Rouge）+ 一键复制
- 响应式设计，支持移动端
- 表格数据展示优化
- 图表展示支持
- 宽屏布局

## 快速开始

在项目根目录创建 `_config.yml`，写入以下内容即可：

```yaml
remote_theme: yansheng836/jekyll-theme-guofeng
title: 你的网站标题
description: 你的网站描述

plugins:
  - jekyll-remote-theme
```

## 配置

主题专属配置使用 `guofeng:` 命名空间（不要用 `theme:`，会覆盖 Jekyll 的主题字段）：

```yaml
remote_theme: yansheng836/jekyll-theme-guofeng
title: 网站标题
description: 网站描述
lang: zh-CN

plugins:
  - jekyll-remote-theme
  - jekyll-seo-tag

# 主题配置
guofeng:
  show_toc: true      # 是否显示目录导航
  wide_layout: true   # 是否使用宽屏布局
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
│   ├── _responsive.scss  # 响应式样式
│   └── _syntax.scss      # 代码高亮样式
├── assets/
│   ├── css/
│   │   └── style.scss    # 主样式文件
│   ├── js/
│   │   └── navigation.js # 导航脚本
│   └── images/
└── _config.yml           # 示例配置
```

## 许可证

MIT License
