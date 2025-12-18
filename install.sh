#!/bin/bash

# Ultrathink for All - Installation Script
# https://github.com/grandeand/ultrathink-for-all

set -e

REPO_URL="https://raw.githubusercontent.com/grandeand/ultrathink-for-all/main"
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${BLUE}🚀 Ultrathink for All - Installer${NC}"
echo ""

# Detect OS
OS="$(uname -s)"
case "${OS}" in
    Linux*)     MACHINE=Linux;;
    Darwin*)    MACHINE=Mac;;
    *)          MACHINE="UNKNOWN"
esac

installed=()

# ==============================
# Antigravity / Gemini
# ==============================
ANTIGRAVITY_DIR="$HOME/.gemini/antigravity/global_workflows"
if [ -d "$HOME/.gemini" ]; then
    echo -e "${YELLOW}Found Antigravity/Gemini...${NC}"
    mkdir -p "$ANTIGRAVITY_DIR"
    
    curl -fsSL "$REPO_URL/antigravity/global_workflows/think.md" -o "$ANTIGRAVITY_DIR/think.md"
    curl -fsSL "$REPO_URL/antigravity/global_workflows/think-harder.md" -o "$ANTIGRAVITY_DIR/think-harder.md"
    curl -fsSL "$REPO_URL/antigravity/global_workflows/ultrathink.md" -o "$ANTIGRAVITY_DIR/ultrathink.md"
    
    installed+=("Antigravity")
fi

# ==============================
# Cursor (Global)
# ==============================
CURSOR_DIR="$HOME/.cursor/commands"
if [ -d "$HOME/.cursor" ] || command -v cursor &> /dev/null; then
    echo -e "${YELLOW}Found Cursor...${NC}"
    mkdir -p "$CURSOR_DIR"
    
    curl -fsSL "$REPO_URL/cursor/commands/think.md" -o "$CURSOR_DIR/think.md"
    curl -fsSL "$REPO_URL/cursor/commands/think-harder.md" -o "$CURSOR_DIR/think-harder.md"
    curl -fsSL "$REPO_URL/cursor/commands/ultrathink.md" -o "$CURSOR_DIR/ultrathink.md"
    
    installed+=("Cursor")
fi

# ==============================
# Windsurf
# ==============================
WINDSURF_DIR="$HOME/.windsurf/rules"
if [ -d "$HOME/.windsurf" ] || [ -d "/Applications/Windsurf.app" ]; then
    echo -e "${YELLOW}Found Windsurf...${NC}"
    mkdir -p "$WINDSURF_DIR"
    
    curl -fsSL "$REPO_URL/windsurf/rules/think.md" -o "$WINDSURF_DIR/think.md"
    curl -fsSL "$REPO_URL/windsurf/rules/think-harder.md" -o "$WINDSURF_DIR/think-harder.md"
    curl -fsSL "$REPO_URL/windsurf/rules/ultrathink.md" -o "$WINDSURF_DIR/ultrathink.md"
    
    installed+=("Windsurf")
fi

# ==============================
# Summary
# ==============================
echo ""
if [ ${#installed[@]} -eq 0 ]; then
    echo -e "${YELLOW}No supported IDEs detected.${NC}"
    echo "Supported IDEs: Antigravity, Cursor, Windsurf"
    echo ""
    echo "For VS Code Copilot, manually add the instructions to:"
    echo "  .github/copilot-instructions.md"
    exit 1
else
    echo -e "${GREEN}✅ Installed for: ${installed[*]}${NC}"
    echo ""
    echo "Usage:"
    echo "  /think [problem]        - Basic extended thinking"
    echo "  /think-harder [problem] - Enhanced thinking"
    echo "  /ultrathink [problem]   - Maximum capacity"
    echo ""
    echo -e "${GREEN}Enjoy! 🚀${NC}"
fi
