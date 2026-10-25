# Session Buddy（会话文件管家）

让 ZCode 的每段对话拥有自己的文件夹，工作区始终适合人类阅读。

## 它做什么

安装后，ZCode 产生的任务产物（报告、文档、导出数据、演示页面、一次性脚本等）不再散落在工作区根目录，而是归档进：

```
buddy/
  INDEX.md                    ← 总索引：每段对话一行，新对话在最上面
  2026-10-25-季度销售报告/
    README.md                 ← 本次任务的人话总结 + 文件清单 + 打开方式
    report.md
    chart.png
  2026-10-26-爬取天气数据/
    README.md
    weather.csv
```

## 组成部分

| 组件 | 作用 |
|---|---|
| `skills/session-buddy` | 核心约定：生成文件时自动建立/复用本对话的 `buddy/日期-主题/` 文件夹，写 README，更新 INDEX |
| `hooks/hooks.json` + `hooks/emit-context.ps1` | SessionStart 钩子：每次会话开始自动注入上述约定（含 /clear、压缩后重注入），不依赖模型自觉 |
| `commands/tidy.md` | `/tidy` 命令：把已有工作区里散落的文件整理进 buddy/ 体系（先出方案、确认后搬动） |

## 边界（不会动什么）

- 对项目源码/配置的修改留在原处；
- 用户指定了位置的文件照用户的来；
- 未经要求绝不移动、重组或删除用户的既有文件。

## 自定义

- 想换目录名（比如 `对话/`）：改 `skills/session-buddy/SKILL.md` 和 `hooks/emit-context.ps1` 里的 `buddy/`，两处保持一致。
- 想改每次会话开始注入的提示语：编辑 `hooks/emit-context.ps1` 里的那句文本（保持 `{"additionalContext":"..."}` 的 JSON 外形）。
- 不想要开机提示：删除 `hooks/hooks.json` 中 `SessionStart` 下的条目即可（或在 设置 → 插件管理 里禁用该插件后单独评估）。

## 验证

开发环境可用 `zcode plugins validate .` 校验；普通用户直接按市场安装步骤操作即可。
