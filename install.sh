#!/bin/bash

sudo pacman -Syi
sudo pacman -S zsh -y
sudo pacman -S fastfetch -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# /usr/local/share/fonts
sudo mkdir -p /usr/local/share/fonts/

sudo curl "https://raw.githubusercontent.com/romkatv/dotfiles-public/master/.local/share/fonts/NerdFonts/MesloLGS%20NF%20Bold%20Italic.ttf" -o "/usr/local/share/fonts/MesloLGS NF Bold Italic.ttf"
sudo curl "https://raw.githubusercontent.com/romkatv/dotfiles-public/master/.local/share/fonts/NerdFonts/MesloLGS%20NF%20Bold.ttf" -o "/usr/local/share/fonts/MesloLGS NF Bold.ttf"
sudo curl "https://raw.githubusercontent.com/romkatv/dotfiles-public/master/.local/share/fonts/NerdFonts/MesloLGS%20NF%20Italic.ttf" -o "/usr/local/share/fonts/MesloLGS NF Italic.ttf"
sudo curl "https://raw.githubusercontent.com/romkatv/dotfiles-public/master/.local/share/fonts/NerdFonts/MesloLGS%20NF%20Regular.ttf" -o "/usr/local/share/fonts/MesloLGS NF Regular.ttf"

cp .bashrc ~/.bashrc
cp .zshrc ~/.zshrc
cp .p10k.zsh ~/.p10k.zsh
