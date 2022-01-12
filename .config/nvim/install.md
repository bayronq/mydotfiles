#Instalación de Plugins en neovim

#Descargar repo
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#Descargar mydotfiles, estar en el path ~/
git clone https://github.com/bayronq/mydotfiles

#copiar carpeta nvim al pat:
~/.config/nvim     

#Instalar Plugins de neovim
nvim +PlugIntall

#reiniciar archivo init.vim
source ~/.confing/nvim/init.vim


