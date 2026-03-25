# 🚀 Ultimate Terminal Setup - Oh My Zsh Configuration

Transform your terminal into a powerful, beautiful, and efficient development environment!

## ✨ What You Get

### Visual Enhancements
- **🎨 Powerlevel10k Theme**: Beautiful prompt with git info, execution time, and more
- **🌈 Syntax Highlighting**: Real-time command coloring as you type
- **💡 Autosuggestions**: Intelligent command predictions based on your history

### Productivity Boosters
- **⚡ Lightning-fast history search** with fzf (Ctrl+R)
- **📁 Smart directory jumping** - type `z proj` to jump to ~/Projects
- **🔧 Command correction** - mistyped? Just type `fuck` to fix it
- **🎯 Fuzzy file finding** (Ctrl+T)

### Developer Tools
- **Git shortcuts**: `gs` (status), `ga` (add), `gc` (commit), `gp` (push)
- **Better commands**: `bat` (colorful cat), `eza` (ls with icons), `rg` (fast grep)
- **Quick functions**: `mkcd` (make & enter dir), `extract` (any archive), `backup` (instant .bak)

## 🛠 Installation

### Prerequisites
1. **macOS**: Install Homebrew
   ```bash
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   ```

2. **Install Oh My Zsh**:
   ```bash
   sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
   ```

### Quick Install (One Command)
```bash
curl -fsSL https://raw.githubusercontent.com/akshat-khare/terminalsetup/master/install-script.sh | bash
```

### Manual Installation

#### Step 1: Install Zsh Plugins
```bash
# Autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Powerlevel10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

#### Step 2: Install CLI Tools
```bash
# All tools at once
brew install fzf bat eza htop ripgrep fd tldr autojump thefuck

# Configure fzf
$(brew --prefix)/opt/fzf/install --all --no-bash --no-fish
```

#### Step 3: Configure .zshrc
Copy the configuration from `zshrc-config.txt` to your `~/.zshrc` file, or use the provided config.

#### Step 4: Reload Terminal
```bash
source ~/.zshrc
```

When you restart, Powerlevel10k will guide you through its configuration wizard.

## 🎮 Essential Keyboard Shortcuts

| Shortcut | Action |
|----------|--------|
| `Ctrl+R` | Fuzzy search command history |
| `Ctrl+T` | Fuzzy find files |
| `→` or `Ctrl+E` | Accept autosuggestion |
| `Ctrl+F/B` | Move word forward/backward |
| `Ctrl+A/E` | Jump to line start/end |

## 🔥 Most Useful Commands

### Navigation
- `z <partial-path>` - Jump to frequently used directories
- `..` / `...` / `....` - Go up directories
- `dl` / `dt` / `docs` - Quick jump to Downloads/Desktop/Documents

### Git
- `gs` - git status
- `ga .` - git add all
- `gc -m "msg"` - git commit
- `gp` - git push
- `gl` - pretty git log

### File Operations
- `ll` - Detailed list with icons
- `tree` - Directory tree view
- `mkcd dirname` - Make and enter directory
- `extract file.zip` - Extract any archive
- `backup file` - Create file.bak

### Search
- `ff "*.py"` - Find files
- `fd dirname` - Find directories
- `rg "pattern"` - Super fast text search
- `hg pattern` - Search command history

### System
- `reload` - Reload config
- `update` - Update all brew packages
- `ip` - Show public IP
- `localip` - Show local IP

## 🎨 Customization

### Change Theme
Edit `~/.zshrc` and change:
```bash
ZSH_THEME="powerlevel10k/powerlevel10k"  # Current
# ZSH_THEME="robbyrussell"  # Default Oh My Zsh theme
```

### Add/Remove Plugins
Edit the plugins section in `~/.zshrc`:
```bash
plugins=(
  git
  docker
  # Add or remove plugins here
)
```

### Configure Powerlevel10k
```bash
p10k configure
```

## 🔧 Troubleshooting

### Reset to Default
```bash
# Backup current config
mv ~/.zshrc ~/.zshrc.backup

# Restore default
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
source ~/.zshrc
```

### Remove Everything
```bash
# Uninstall custom plugins
rm -rf ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
rm -rf ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
rm -rf ~/.oh-my-zsh/custom/themes/powerlevel10k

# Uninstall brew packages
brew uninstall bat eza htop ripgrep fd tldr autojump thefuck fzf
```

## 📦 What's Installed

### Zsh Plugins
- **zsh-autosuggestions**: Fish-like autosuggestions
- **zsh-syntax-highlighting**: Fish-like syntax highlighting
- **git, docker, npm, python**: Smart completions
- **z**: Frecency-based directory jumping
- **extract**: Universal archive extractor

### CLI Tools
- **fzf**: Fuzzy finder for everything
- **bat**: Cat with syntax highlighting
- **eza**: Modern ls replacement
- **htop**: Interactive process viewer
- **ripgrep**: Blazing fast grep
- **fd**: User-friendly find
- **autojump**: Learn your habits, jump faster
- **thefuck**: Correct previous commands

## 🚀 For VMs and Remote Servers

This setup works great on:
- macOS (Intel & Apple Silicon)
- Ubuntu/Debian (use apt instead of brew)
- WSL2 on Windows
- Docker containers
- Remote servers via SSH

For Linux, replace `brew` with:
```bash
# Ubuntu/Debian
sudo apt install fzf bat exa htop ripgrep fd-find

# Fedora
sudo dnf install fzf bat exa htop ripgrep fd-find
```

## 📝 Share With Friends

Share this repo! They can get the same setup with:
1. Install prerequisites (Homebrew, Oh My Zsh)
2. Run the install script
3. Enjoy the same powerful terminal experience

## 💡 Pro Tips

1. **Learn fzf**: It's a game-changer for history and file navigation
2. **Use z/autojump**: Stop typing long paths
3. **Master aliases**: `gs`, `ga`, `gc`, `gp` will save you hours
4. **Embrace autosuggestions**: Just press → to complete
5. **Try `fuck`**: It really fixes your typos!

---

Made with ❤️ for developers who love their terminal

**Questions?** The setup is fully documented in the accompanying files.
**Issues?** Everything is reversible - check the troubleshooting section.