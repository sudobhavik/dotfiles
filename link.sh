#!/usr/bin/env bash
set -e

DOTFILES="$HOME/dotfiles"

echo "🔗 Linking config directories..."

mkdir -p ~/.config

ln -sf "$DOTFILES/config/i3"        ~/.config/i3
ln -sf "$DOTFILES/config/kitty"     ~/.config/kitty
ln -sf "$DOTFILES/config/picom"     ~/.config/picom
ln -sf "$DOTFILES/config/polybar"   ~/.config/polybar
ln -sf "$DOTFILES/config/rofi"      ~/.config/rofi

echo "🔗 Linking shell configs..."

ln -sf "$DOTFILES/home/.zshrc"      ~/.zshrc
ln -sf "$DOTFILES/home/.p10k.zsh"   ~/.p10k.zsh

echo "✅ Dotfiles linked successfully"
