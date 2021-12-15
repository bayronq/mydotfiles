#oh my zshrc
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#zsh suggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions

#zsh syntax highlighting
git clone https://github.com/dracula/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting

#powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

#Add the following to your .zshrc:
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

#Buscador fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

