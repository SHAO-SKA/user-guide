# 中国 SKA 区域中心（cnSRC）使用文档

[![Documentation Status](https://readthedocs.org/projects/shaoska-user-guide/badge/?version=latest)](https://shaoska-user-guide.readthedocs.io/zh-cn/latest/?badge=latest)

![](ChinaSRC-2020.jpg)

本仓库是中国 SKA 区域中心（cnSRC）平台的用户使用文档。

文档采用 reStructuredText 编写，并发布到 Read the Docs。

**在线文档**

- **中文**：https://shaoska-user-guide.readthedocs.io/zh-cn/latest/index.html
- **English**：https://cnsrc-user-guide-en.readthedocs.io/en/latest/

English introduction: [README.md](README.md).

## 最新动态

- :tada: 2025-04-14：cnSRC 成为官方 SRCNet v0.1 节点。

## 本地预览

先创建虚拟环境并安装依赖（`pip install -r requirements.txt`），然后执行：

```bash
$ make html        # 中文 HTML
$ make html-en     # 英文 HTML
```

生成结果位于 `_build/html`（英文在 `_build/html/en`）。

正文以中文 `.rst` 为源；英文译文在 `locales/en/`。更新翻译目录可执行 `make update-po`。

## 贡献

欢迎提交 issue 与 PR。

## 引用

如果您在研究中使用了 cnSRC，注明以下信息将十分有帮助：

本研究使用了由中华人民共和国科学技术部资助研制的中国 SKA 区域中心节点资源。

## 联系方式

如有问题请联系：shaoska@shao.ac.cn 或 cnsrc@shao.ac.cn
