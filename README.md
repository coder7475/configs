# Config

All dotfiles config for my shell (bash), text editor (neovim) and so on.

## 🛠️ Dotfiles & Configs – Setup Guide

Welcome to my personal configuration repository! This repo contains settings, aliases, themes, and tools I use for my development workflow. You can use this to restore my setup on a new machine.

---

## 🔄 What’s Included

This repo manages the following:

- Shell settings (`.bashrc`)
- Git configuration (`.gitconfig`)
- Vim/Neovim config (`.vimrc`, `.config/nvim/`)

---

## 🚀 Quick Setup (Recommended)

To set up this environment on a new machine, run:

```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/coder7475/configs/main/setup_configs.sh)"
````

> This script clones the repo, backs up your existing config files, and symlinks the new ones.

---

## 🧾 Manual Setup

1. **Clone the Repo:**

   ```bash
   git clone https://github.com/coder7475/configs.git ~/.dotfiles
   cd ~/.dotfiles
   ```

2. **Run the Setup Script:**

   ```bash
   chmod +x setup_configs.sh
   ./setup_configs.sh
   ```

3. **Reload Your Shell:**

   ```bash
   source ~/.bashrc     # or source ~/.zshrc
   ```

---

## 💾 Notes

* Backups of your existing config files (if any) are saved with timestamps.
* You can customize which files to symlink by editing the `setup_configs.sh` script.
* This setup assumes your terminal supports symlinks and you have basic tools like Git.

---

## 🧩 Optional Tools You Might Want to Install

* [Homebrew](https://brew.sh/)
* [Oh My Zsh](https://ohmyz.sh/)
* [Tmux](https://github.com/tmux/tmux)
* [Neovim](https://neovim.io/)

---

## 📂 Directory Structure Example

```
configs/
├── .bashrc
├── .config/
│   └── nvim/
│       ├── init.vim
│       └── ...
└── setup_configs.sh
```

---

## 👤 Author

**[@coder7475](https://github.com/coder7475)**
Feel free to fork or adapt this for your own development environment!

```

---


