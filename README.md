# Session Buddy（会话文件管家）

[English](README.en.md) | 中文

> **ZCode 插件**：让每段 AI 对话拥有自己的文件夹 | Give every AI conversation its own tidy folder.
> 适用：ZCode（一键安装）· Codex / Cursor / Cline（用 AGENTS.md 通用规则）

**关键词**：ZCode 插件 · AI 编程 · 工作区整理 · 会话归档 · AGENTS.md · 通用规则文件 · workspace organization

## 为什么需要它

用 AI 编程工具干活，报告、导出的数据、演示页面、一次性脚本会越堆越多，全糊在项目根目录，人没法看。Session Buddy 立一条规矩：**每段对话一个文件夹**——AI 产物自动归档进 `buddy/日期-主题/`，每夹一份人类可读的 README，外加一份总索引，工作区始终整洁可读。

归档后的样子：

```
buddy/
  INDEX.md                  ← 总索引：每段对话一行，新的在最上面
  2026-10-25-季度销售报告/
    README.md               ← 这次做了什么 + 文件清单 + 怎么打开
    report.md
    chart.png
```

## 安装方式一：从 GitHub / Gitee 安装（推荐，以后能自动更新）

前提：仓库已经建好——你现在看到的这个页面就是它。

1. 打开 ZCode，进入**插件市场**（Plugin Marketplace / 发现 页）；
2. 点右上角的 **+**（添加插件市场）；
3. 粘贴仓库地址：https://github.com/Yogurt1900/zcode-session-buddy（Gitee 同理，粘贴对应地址）；
4. 添加成功后，在市场列表里找到 **Session Buddy（会话文件管家）**，点 **安装 / 获取**；
5. **新开一个对话**即可生效。

## 安装方式二：本地文件夹安装（收到压缩包的情况）

1. 把收到的压缩包解压到任意位置，比如 `文档\session-buddy-market`；
2. 打开 ZCode 的**插件市场 → + 添加插件市场**，来源选**本地目录**，选中解压出来的 `session-buddy-market` 文件夹；
3. 在列表里找到 **Session Buddy**，点 **安装 / 获取**；
4. **新开一个对话**即可生效。

## 安装方式三：不用 ZCode？复制一份规则文件就够了

其他 AI 编程工具（Codex CLI、Cursor、Cline 等）装不了这个插件，但整理规则是通用的：

1. 把本仓库根目录的 **`AGENTS.md`** 复制到你的项目根目录——多数工具会自动读取它；
2. 工具不支持 `AGENTS.md` 的，把文件内容粘贴进它的规则文件（`.cursorrules`、`.clinerules`、自定义指令均可）；
3. 之后让 AI"写份报告"、"导出数据"或"整理一下工作区"，同样的 `buddy/日期-主题/` 规矩自动生效。

## 装好之后怎么用

- 不用做任何额外操作：正常对话，需要生成文件时 AI 会自动归档进 `buddy/日期-主题/`；
- 对已经乱七八糟的老工作区，输入 `/tidy`，它会先给整理方案、你确认后才动手；
- 规则细节见插件文件夹里的 `README.md`，想改目录名或提示语也在那里改。

## 常见问题

- **市场里找不到插件？** 确认市场添加成功、插件已启用（设置 → 插件管理）。
- **从 GitHub 添加时超时 / 克隆失败？** 多半是网络问题：GitHub 需要代理，设置系统环境变量 `ZCODE_HTTP_PROXY=http://代理地址:端口`（ZCode 只认这个变量），或改用 Gitee。
- **Mac / Linux 能用吗？** 技能和 `/tidy` 命令可以用；"每次开会话自动提醒"的钩子目前只在 Windows 上生效（其他系统会有一条无害的报错记录，可以忽略或删掉插件里的 hooks）。
- **怎么更新？** 作者发布新版本后，在插件市场里对插件点一次更新（本地目录方式则替换文件夹后重装）。

## 为什么做这个插件（作者的话）

> 第一次白嫖 ZCode 的模型时，拿它跑了很多任务。后来额度没了，我只能去翻文件夹里剩下的东西——没想到任务产生的文件全挤在一个文件夹里，大脑一片空白，索性不管了，反正也看不懂。10 月 24 号程序员日让我重新获得了使用它的机会，于是我灵机一动，让他（GLM）把这个插件做了出来。希望它能帮到你。这是我第一次上传仓库，遇到问题或有好点子，尽情提 Issue 吧！

## English

**Session Buddy** is a ZCode plugin that gives every AI conversation its own tidy folder. File deliverables (reports, generated documents, data exports, demo pages) are archived into `buddy/<date>-<topic>/` automatically — each folder gets a human-readable README, plus a workspace-wide `buddy/INDEX.md`.

- **ZCode users**: add this repository as a plugin marketplace (Plugin Marketplace → "+" → paste the repo URL), then install *Session Buddy*.
- **Other tools** (Codex CLI, Cursor, Cline, ...): copy [`AGENTS.md`](AGENTS.md) into your project root — same convention, no plugin needed.
- `/tidy` cleans up an already-messy workspace: it inventories loose files, checks cross-references before moving anything, shows you a plan first, and never deletes.

MIT licensed.

## 许可

MIT，随意使用、修改、转发。
