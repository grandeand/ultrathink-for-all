# 🚀 Ultrathink for All

<div align="center">

**Bring Claude Code's extended thinking to every AI IDE**

[English](#-what-is-this) | [Türkçe](README-TR.md)

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

</div>

---

## 🧠 What is This?

**Ultrathink for All** brings [Claude Code's extended thinking](https://platform.claude.com/docs/en/build-with-claude/extended-thinking) commands to **every AI-powered code editor**.

In Claude Code, keywords like `think`, `think harder`, and `ultrathink` trigger the AI to allocate more "thinking tokens" - spending more time reasoning through problems before answering. This leads to better solutions for complex problems.

**This project makes the same commands work with ANY AI model in ANY IDE:**

| Works With Any LLM | Works With Any IDE |
|-------------------|-------------------|
| ✅ Claude | ✅ Cursor |
| ✅ GPT-4 | ✅ Windsurf |
| ✅ Gemini | ✅ VS Code (Copilot) |
| ✅ Any other model | ✅ Antigravity |

### How It Works

Instead of special model features, these workflows use **prompt engineering** to instruct ANY AI to:
- Take more time before answering
- Consider more alternatives
- Question assumptions
- Find root causes
- Produce bulletproof solutions

---

## ⚡ Quick Install

### macOS / Linux
```bash
curl -fsSL https://raw.githubusercontent.com/grandeand/ultrathink-for-all/main/install.sh | bash
```

### Windows (PowerShell)
```powershell
irm https://raw.githubusercontent.com/grandeand/ultrathink-for-all/main/install.ps1 | iex
```

---

## 📖 Manual Installation

<details>
<summary><b>Antigravity / Gemini</b></summary>

```bash
cp -r antigravity/global_workflows/* ~/.gemini/antigravity/global_workflows/
```
</details>

<details>
<summary><b>Cursor</b></summary>

```bash
# Global (all projects)
cp -r cursor/commands/* ~/.cursor/commands/

# Per project
cp -r cursor/commands/* .cursor/commands/
```
</details>

<details>
<summary><b>VS Code (Copilot)</b></summary>

```bash
# Append to your project's instructions file
cat vscode/copilot-instructions-addon.md >> .github/copilot-instructions.md
```
</details>

<details>
<summary><b>Windsurf</b></summary>

```bash
cp -r windsurf/rules/* ~/.windsurf/rules/
```
</details>

---

## 🎯 Usage

Once installed, use these commands in your AI chat:

```
/think [your problem]
```
> Basic extended thinking - deeper analysis before answering

```
/think-harder [your problem]
```
> Enhanced thinking - for problems that weren't solved on first try

```
/ultrathink [your problem]
```
> Maximum capacity - for the hardest problems, when you're completely stuck

### Example

```
/ultrathink we tried this bug 10 times, why can't we solve it? Fix it now!
```

---

## 📊 Thinking Levels

| Level | Behavior | When to Use |
|-------|----------|-------------|
| `/think` | Don't rush, analyze deeply, consider 2-3 alternatives | Complex problems |
| `/think-harder` | Much longer thinking, question assumptions, find root cause | Recurring issues |
| `/ultrathink` | Maximum capacity, question everything, no giving up | "Impossible" bugs |

**Key principle:** Token cost doesn't matter - correctness matters.

---

## 🤝 Contributing

PRs welcome! You can:
- Add support for more IDEs
- Improve existing workflow instructions
- Add translations

---

## 📜 License

MIT

---

## 🙏 Credits

Inspired by [Claude Code's extended thinking mode](https://docs.anthropic.com/en/docs/claude-code) by Anthropic.
