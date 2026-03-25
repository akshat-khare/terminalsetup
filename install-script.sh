#!/bin/bash

# Ultimate Oh My Zsh Setup Script
# Run this on any macOS/Linux machine for the same terminal experience
# Repo: https://github.com/akshat-khare/terminalsetup

set -e
REPO_RAW="https://raw.githubusercontent.com/akshat-khare/terminalsetup/master"

echo "Starting terminal setup..."

# 1. Install Oh My Zsh if not present
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  echo "Installing Oh My Zsh..."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

# 2. Install Zsh plugins
echo "Installing Zsh plugins..."
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions 2>/dev/null || true
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting 2>/dev/null || true
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k 2>/dev/null || true

# 3. Install CLI tools
echo "Installing CLI tools..."
if command -v brew &>/dev/null; then
  brew install fzf bat eza htop ripgrep fd tldr autojump thefuck 2>/dev/null || true
  $(brew --prefix)/opt/fzf/install --all --no-bash --no-fish 2>/dev/null || true
elif command -v apt-get &>/dev/null; then
  sudo apt-get update && sudo apt-get install -y fzf bat exa htop ripgrep fd-find
fi

# 4. Backup existing configs
echo "Backing up existing configs..."
[ -f ~/.zshrc ] && cp ~/.zshrc ~/.zshrc.backup.$(date +%Y%m%d_%H%M%S)
[ -f ~/.p10k.zsh ] && cp ~/.p10k.zsh ~/.p10k.zsh.backup.$(date +%Y%m%d_%H%M%S)

# 5. Download configs from repo
echo "Downloading configs..."
curl -fsSL "$REPO_RAW/zshrc-config.txt" -o ~/.zshrc
curl -fsSL "$REPO_RAW/.p10k.zsh" -o ~/.p10k.zsh
curl -fsSL "$REPO_RAW/.zprofile" -o ~/.zprofile

echo ""
echo "Setup complete! Run: exec zsh"
echo "Powerlevel10k will ask to configure on first run."
echo ""
echo "Useful: run 'mcp-clean' anytime to kill orphaned MCP processes."
