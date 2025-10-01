#!/bin/bash

sudo dnf install -y neovim luarocks tree-sitter-cli

# Only attempt to set configuration if Neovim has never been run
if [ ! -d "$HOME/.config/nvim" ]; then
  # Use LazyVim
  git clone https://github.com/LazyVim/starter ~/.config/nvim
  # Remove the .git folder, so you can add it to your own repo later
  rm -rf ~/.config/nvim/.git

  # Make everything match the terminal transparency
  mkdir -p ~/.config/nvim/plugin/after
  cp ~/.local/share/omakfe/configs/neovim/transparency.lua ~/.config/nvim/plugin/after/

  # Default to Tokyo Night theme
  cp ~/.local/share/omakfe/themes/tokyo-night/neovim.lua ~/.config/nvim/lua/plugins/theme.lua

  # Turn off animated scrolling
  cp ~/.local/share/omakfe/configs/neovim/snacks-animated-scrolling-off.lua ~/.config/nvim/lua/plugins/

  # Turn off relative line numbers
  echo "vim.opt.relativenumber = false" >>~/.config/nvim/lua/config/options.lua

  # Ensure editor.neo-tree is used by default
  cp ~/.local/share/omakfe/configs/neovim/lazyvim.json ~/.config/nvim/
fi

# Replace desktop launcher with one running inside Alacritty
if [[ -d ~/.local/share/applications ]]; then
  sudo rm -rf /usr/share/applications/nvim.desktop
  sudo rm -rf /usr/local/share/applications/nvim.desktop
  source ~/.local/share/omakfe/applications/Neovim.sh
fi
