# Session Buddy

[中文](README.md) | English

> **A ZCode plugin**: every AI conversation gets its own tidy folder.
> Works with: ZCode (one-click install) · Codex / Cursor / Cline (via the universal `AGENTS.md` rules file)

**Keywords**: ZCode plugin · AI coding · workspace organization · session archiving · AGENTS.md

## Why you need it

Working with AI coding tools, reports, data exports, demo pages and one-off scripts pile up in your project root until no human can read it. Session Buddy enforces one simple rule: **one folder per conversation** — AI-generated files are archived into `buddy/<date>-<topic>/`, each folder gets a human-readable README, and one index file keeps track of everything.

It looks like this:

```
buddy/
  INDEX.md                  ← master index: one row per conversation, newest on top
  2026-10-25-quarterly-sales-report/
    README.md               ← what was done + file list + how to open each file
    report.md
    chart.png
```

## Install (ZCode users)

**Option 1 — from this GitHub repository (recommended, auto-updatable):**

1. Open the **Plugin Marketplace** in ZCode;
2. Click the **+** button (Add Plugin Marketplace);
3. Paste this repository URL;
4. Find **Session Buddy** in the list and click **Install / Get**;
5. Start a new conversation — done.

**Option 2 — from a local folder (if you received a zip):**

1. Unzip it anywhere, e.g. `Documents\session-buddy-market`;
2. Plugin Marketplace → **+** → choose **local directory** → select the unzipped `session-buddy-market` folder;
3. Install **Session Buddy**;
4. Start a new conversation — done.

## Other AI tools? Copy one file and you're set

Tools like Codex CLI, Cursor or Cline can't install this plugin, but the convention itself is universal:

1. Copy **[`AGENTS.md`](AGENTS.md)** from this repository into your project root — most tools pick it up automatically;
2. If your tool doesn't read `AGENTS.md`, paste its content into that tool's rules file (`.cursorrules`, `.clinerules`, custom instructions, etc.);
3. Done — the same `buddy/<date>-<topic>/` convention now applies.

## After installing

- Nothing to configure: just talk to the AI, and deliverables are archived automatically;
- For an already-messy workspace, run `/tidy` — it inventories loose files, **checks cross-references before moving anything**, shows you a plan first, and only moves files after you confirm;
- Rules and customization (folder name, reminder text) are documented in [`session-buddy/README.md`](session-buddy/README.md).

## FAQ

- **Can't find the plugin?** Make sure the marketplace was added and the plugin is enabled (Settings → Plugin Management).
- **Clone timeout when adding from GitHub?** Network issue: set the `ZCODE_HTTP_PROXY` environment variable for ZCode, or use a mirror such as Gitee.
- **macOS / Linux?** The skill and `/tidy` work; the session-start reminder hook is Windows-only (a harmless error entry appears on other systems — you can remove the hook entry or ignore it).
- **How do I get updates?** The author pushes new versions; click Update on the plugin in the marketplace (for local installs, replace the folder and reinstall).

## Why I built this (a note from the author)

> When I first got free access to ZCode's model, I ran tons of tasks with it. When my quota ran out, all I could do was open the folder and look at what was left — and everything the tasks had produced was crammed into one single folder. My mind went blank, and I gave up on it, since I couldn't make sense of it anyway. Then October 24th, Programmer's Day, gave me my chance to use it again — and on a whim, I asked GLM to build this plugin. I hope it helps you too. This is my first time publishing a repository — if you hit any problems (or have ideas), issues are more than welcome!

## License

MIT — free to use, modify and share.
