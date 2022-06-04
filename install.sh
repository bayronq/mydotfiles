#!/bin/bash
#oh my zshrc
#sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#zsh suggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions

#zsh syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

#powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
cp ~/Repo/mydotfiles/.p10k.zsh ~/.p10k.zsh

#Buscador fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

rm ~/.zshrc

cp ~/Repo/mydotfiles/.zshrc ~/.zshrc

#Instalación de Plugins en neovim

#Descargar repo
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#copiar carpeta nvim al pat:
cp ~/Repo/mydotfiles/.config/nvim ~/.config/nvim

#Instalar Plugins de neovim
nvim +PlugIntall

#reiniciar archivo init.vim
#source ~/.confing/nvim/init.vim
