#!/bin/bash

set -e

REPO_URL="https://github.com/coder7475/configs.git"
CLONE_DIR="$HOME/.dotfiles"

# Clone repo if not exists
if [ ! -d "$CLONE_DIR" ]; then
  echo "📦 Cloning config repo..."
  git clone "$REPO_URL" "$CLONE_DIR"
else
  echo "✅ Config repo already cloned at $CLONE_DIR"
fi

cd "$CLONE_DIR"

# Backup and symlink .bashrc
if [ -f "$HOME/.bashrc" ] && [ ! -L "$HOME/.bashrc" ]; then
  mv "$HOME/.bashrc" "$HOME/.bashrc.backup.$(date +%s)"
  echo "📁 Backed up existing .bashrc"
fi
ln -sf "$CLONE_DIR/.bashrc" "$HOME/.bashrc"
echo "✅ Linked .bashrc"

# Backup and symlink Neovim config directory
NVIM_CONFIG_DIR="$HOME/.config/nvim"
if [ -d "$NVIM_CONFIG_DIR" ] && [ ! -L "$NVIM_CONFIG_DIR" ]; then
  mv "$NVIM_CONFIG_DIR" "$NVIM_CONFIG_DIR.backup.$(date +%s)"
  echo "📁 Backed up existing Neovim config"
fi

mkdir -p "$(dirname "$NVIM_CONFIG_DIR")"
ln -sf "$CLONE_DIR/.config/nvim" "$NVIM_CONFIG_DIR"
echo "✅ Linked Neovim config"

echo "🎉 Setup complete! Run 'source ~/.bashrc' or restart your terminal."

