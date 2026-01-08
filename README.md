# ✨ Dotfiles — i3 / Polybar / Rofi / Picom Setup

A minimal, elegant, and productivity-focused **i3 window manager setup** for Ubuntu, featuring:

- 🎛 **i3** — Tiling window manager
- 📊 **Polybar** — Minimal status bar
- 🚀 **Rofi** — Application launcher & menus
- 🌫 **Picom** — Rounded corners & blur
- 🐱 **Kitty** — GPU-accelerated terminal
- 🐚 **Zsh + Powerlevel10k** — Modern shell experience
- 🎨 **Catppuccin** — Consistent pastel dark theme

Designed to be:
- ✔ Clean
- ✔ Modular
- ✔ Easily restorable after a full OS wipe

---

## 📁 Repository Structure

dotfiles/
├── config/
│ ├── i3/ # i3 window manager configuration
│ ├── polybar/ # Polybar modules & themes
│ ├── rofi/ # Rofi launcher & menus
│ ├── picom/ # Picom compositor (blur, corners)
│ └── kitty/ # Kitty terminal config
├── home/
│ ├── .zshrc # Zsh configuration
│ └── .p10k.zsh # Powerlevel10k theme config
├── scripts/ # Custom scripts (lock, wifi, etc.)
├── wallpapers/ # Wallpapers used in setup
├── fonts/ # User fonts (Nerd Fonts etc.)
├── install.sh # Installs all dependencies
├── link.sh # Symlinks configs to correct locations
├── .gitignore
└── README.md


---

## 🧰 Requirements

- **OS:** Ubuntu 22.04+
- **Display Server:** X11 (not Wayland)
- **Window Manager:** i3
- **Network:** NetworkManager

---

## 🚀 Quick Install (Fresh System)

### 1️⃣ Clone the repository
```bash
git clone --recurse-submodules https://github.com/<your-username>/dotfiles.git
cd dotfiles
```
2️⃣ Install dependencies
./install.sh


This installs:

i3, polybar, rofi, picom, kitty

zsh + oh-my-zsh + powerlevel10k

audio, brightness, network, bluetooth tools

fonts (JetBrains Mono, Font Awesome)

utilities (feh, scrot, imagemagick, etc.)

3️⃣ Link configuration files
./link.sh


This safely creates symlinks like:

~/.config/i3      → dotfiles/config/i3
~/.zshrc          → dotfiles/home/.zshrc

4️⃣ Reboot
reboot


🎉 Your full environment is restored.

⌨ Keybindings (Highlights)
Action	Shortcut
App launcher	Mod + Space
Kill window	Mod + Shift + Q
Reload i3	Mod + Shift + R
Lock screen	Mod + Shift + L
Screenshot	Custom bindings
Volume / Brightness	Media keys
🎨 Theming

Global theme: Catppuccin (dark pastel)

Fonts: JetBrains Mono Nerd Font

Icons: Font Awesome

Transparency: Picom (dual_kawase blur) 
