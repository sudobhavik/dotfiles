#!/usr/bin/env bash
set -e

echo "📦 Updating system..."
sudo apt update

echo "📦 Installing core packages..."
sudo apt install -y \
  i3 \
  polybar \
  rofi \
  picom \
  kitty \
  feh \
  xss-lock \
  brightnessctl \
  pulseaudio \
  pavucontrol \
  playerctl \
  network-manager \
  nm-tray \
  blueman \
  flameshot \
  scrot \
  imagemagick \
  git \
  curl \
  wget \
  unzip \
  fonts-font-awesome \
  fonts-jetbrains-mono

echo "📦 Installing ZSH + Oh My Zsh..."
sudo apt install -y zsh
chsh -s "$(which zsh)"

if [ ! -d "$HOME/.oh-my-zsh" ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

echo "📦 Installing Powerlevel10k..."
if [ ! -d "$HOME/.oh-my-zsh/custom/themes/powerlevel10k" ]; then
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git \
    ~/.oh-my-zsh/custom/themes/powerlevel10k
fi

echo "✅ Installation complete"
echo "➡️ Run ./link.sh next"
