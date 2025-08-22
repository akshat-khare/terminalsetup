#!/bin/bash

# Ultimate Oh My Zsh Setup Script
# Run this on any macOS/Linux machine for the same terminal experience
# Prerequisites: Oh My Zsh and Homebrew installed

echo "🚀 Starting Ultimate Terminal Setup..."

# 1. Install Zsh plugins
echo "📦 Installing Zsh plugins..."
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# 2. Install CLI tools via Homebrew
echo "🍺 Installing CLI tools..."
brew install fzf bat eza htop ripgrep fd tldr autojump thefuck

# 3. Setup fzf
echo "⚙️ Configuring fzf..."
$(brew --prefix)/opt/fzf/install --all --no-bash --no-fish

# 4. Backup existing .zshrc
echo "💾 Backing up .zshrc..."
cp ~/.zshrc ~/.zshrc.backup.$(date +%Y%m%d_%H%M%S)

# 5. Download the configured .zshrc
echo "📝 Setting up .zshrc configuration..."
curl -o ~/.zshrc https://raw.githubusercontent.com/yourusername/terminal-setup/main/.zshrc

echo "✅ Setup complete! Please run: source ~/.zshrc"
echo "🎨 Powerlevel10k will ask to configure on first run - just follow the prompts!"