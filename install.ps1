# Ultrathink for All - Windows Installation Script
# https://github.com/grandeand/ultrathink-for-all

$RepoUrl = "https://raw.githubusercontent.com/grandeand/ultrathink-for-all/main"
$Installed = @()

Write-Host "🚀 Ultrathink for All - Installer" -ForegroundColor Blue
Write-Host ""

# ==============================
# Cursor (Global)
# ==============================
$CursorDir = "$env:USERPROFILE\.cursor\commands"
if (Test-Path "$env:USERPROFILE\.cursor") {
    Write-Host "Found Cursor..." -ForegroundColor Yellow
    New-Item -ItemType Directory -Force -Path $CursorDir | Out-Null
    
    Invoke-WebRequest -Uri "$RepoUrl/cursor/commands/think.md" -OutFile "$CursorDir\think.md"
    Invoke-WebRequest -Uri "$RepoUrl/cursor/commands/think-harder.md" -OutFile "$CursorDir\think-harder.md"
    Invoke-WebRequest -Uri "$RepoUrl/cursor/commands/ultrathink.md" -OutFile "$CursorDir\ultrathink.md"
    
    $Installed += "Cursor"
}

# ==============================
# Windsurf
# ==============================
$WindsurfDir = "$env:USERPROFILE\.windsurf\rules"
if (Test-Path "$env:USERPROFILE\.windsurf") {
    Write-Host "Found Windsurf..." -ForegroundColor Yellow
    New-Item -ItemType Directory -Force -Path $WindsurfDir | Out-Null
    
    Invoke-WebRequest -Uri "$RepoUrl/windsurf/rules/think.md" -OutFile "$WindsurfDir\think.md"
    Invoke-WebRequest -Uri "$RepoUrl/windsurf/rules/think-harder.md" -OutFile "$WindsurfDir\think-harder.md"
    Invoke-WebRequest -Uri "$RepoUrl/windsurf/rules/ultrathink.md" -OutFile "$WindsurfDir\ultrathink.md"
    
    $Installed += "Windsurf"
}

# ==============================
# Summary
# ==============================
Write-Host ""
if ($Installed.Count -eq 0) {
    Write-Host "No supported IDEs detected." -ForegroundColor Yellow
    Write-Host "Supported IDEs: Cursor, Windsurf"
    Write-Host ""
    Write-Host "For VS Code Copilot, manually add the instructions to:"
    Write-Host "  .github\copilot-instructions.md"
} else {
    Write-Host "✅ Installed for: $($Installed -join ', ')" -ForegroundColor Green
    Write-Host ""
    Write-Host "Usage:"
    Write-Host "  /think [problem]        - Basic extended thinking"
    Write-Host "  /think-harder [problem] - Enhanced thinking"
    Write-Host "  /ultrathink [problem]   - Maximum capacity"
    Write-Host ""
    Write-Host "Enjoy! 🚀" -ForegroundColor Green
}
