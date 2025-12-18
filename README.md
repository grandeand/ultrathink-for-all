# 🚀 Ultrathink for All

**Extended thinking workflows for AI-powered code editors.**

Bring Claude Code's `/think`, `/think-harder`, and `/ultrathink` commands to every AI IDE.

## Supported IDEs

| IDE | Status | Commands |
|-----|--------|----------|
| **Antigravity** (Gemini) | ✅ | `/think` `/think-harder` `/ultrathink` |
| **Cursor** | ✅ | `/think` `/think-harder` `/ultrathink` |
| **VS Code** (Copilot) | ✅ | Inline instructions |
| **Windsurf** | ✅ | Via rules |

## Quick Install

### macOS / Linux
```bash
curl -fsSL https://raw.githubusercontent.com/grandeand/ultrathink-for-all/main/install.sh | bash
```

### Windows (PowerShell)
```powershell
irm https://raw.githubusercontent.com/grandeand/ultrathink-for-all/main/install.ps1 | iex
```

## Manual Installation

### Antigravity / Gemini
```bash
cp -r antigravity/global_workflows/* ~/.gemini/antigravity/global_workflows/
```

### Cursor
```bash
# Global (all projects)
cp -r cursor/commands/* ~/.cursor/commands/

# Per project
cp -r cursor/commands/* .cursor/commands/
```

### VS Code (Copilot)
```bash
# Copy content to your project's .github/copilot-instructions.md
cat vscode/copilot-instructions-addon.md >> .github/copilot-instructions.md
```

### Windsurf
```bash
cp -r windsurf/rules/* ~/.windsurf/rules/
# Or per project:
cp -r windsurf/rules/* .windsurf/rules/
```

## Usage

Once installed, use these commands in your AI chat:

```
/think [your problem]
# Basic extended thinking - deeper analysis

/think-harder [your problem]  
# Enhanced thinking - for problems that weren't solved on first try

/ultrathink [your problem]
# Maximum capacity - for the hardest problems, when you're stuck
```

### Example

```
/ultrathink we tried this bug 10 times, why can't we solve it? Fix it now!
```

## What It Does

These commands instruct the AI to:

| Level | Behavior |
|-------|----------|
| `/think` | Don't rush, analyze deeply, consider alternatives |
| `/think-harder` | Much longer thinking, question assumptions, find root cause |
| `/ultrathink` | Maximum capacity, question everything, no giving up, definitive solution |

**Key principle:** Token cost doesn't matter - correctness matters.

## Credits

Inspired by [Claude Code's extended thinking mode](https://docs.anthropic.com/en/docs/claude-code).

## Contributing

PRs welcome! Add support for more IDEs or improve existing workflows.

## License

MIT
