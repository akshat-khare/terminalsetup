# Quick Reference - Terminal Commands

## Most Useful Features Added

### 1. Command History Search (FZF)
- **Ctrl+R**: Search through command history with fuzzy matching
- Much better than default reverse search

### 2. Autosuggestions
- Start typing and see grayed-out suggestions
- Press **→** or **Ctrl+E** to accept

### 3. Directory Navigation
- **z <partial-name>**: Jump to frequently used directories
  - Example: `z proj` jumps to ~/Projects
- **j <partial-name>**: Alternative jump (autojump)
  - Example: `j down` jumps to ~/Downloads

### 4. Fix Commands
- Made a typo? Type **fuck** to correct the last command
  - Example: `git sttus` → `fuck` → runs `git status`

### 5. Quick File Operations
- **extract file.zip**: Works with any archive format
- **mkcd newdir**: Create and enter directory
- **backup file.txt**: Creates file.txt.bak

### 6. Better File Listing
- **ll**: Detailed list with icons
- **tree**: Tree view with icons

### 7. Git Shortcuts
- **gs**: git status
- **ga .**: git add .
- **gc -m "message"**: git commit
- **gp**: git push
- **gl**: pretty git log

### 8. Search Files
- **ff "*.py"**: Find files by name
- **fd dirname**: Find directories
- **rg "pattern"**: Super fast grep

### 9. System
- **reload**: Reload terminal config
- **update**: Update all brew packages
- **h**: Show history
- **hg pattern**: Search history

## Tools You Can Use Now

| Command | What it does |
|---------|-------------|
| `bat file.txt` | View file with syntax highlighting |
| `eza` or `ls` | List files with icons |
| `htop` | Interactive process monitor |
| `tldr git` | Simple examples for commands |
| `Ctrl+T` | Find and insert file paths |

## Emergency Reset

If something breaks:
```bash
# Reset to basic Oh My Zsh
mv ~/.zshrc ~/.zshrc.broken
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
source ~/.zshrc
```