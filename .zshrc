##  ██████╗  █████╗ ██╗   ██╗██████╗  ██████╗ ███╗   ██╗ ██████╗ 
##  ██╔══██╗██╔══██╗╚██╗ ██╔╝██╔══██╗██╔═══██╗████╗  ██║██╔═══██╗
##  ██████╔╝███████║ ╚████╔╝ ██████╔╝██║   ██║██╔██╗ ██║██║   ██║
##  ██╔══██╗██╔══██║  ╚██╔╝  ██╔══██╗██║   ██║██║╚██╗██║██║▄▄ ██║
##  ██████╔╝██║  ██║   ██║   ██║  ██║╚██████╔╝██║ ╚████║╚██████╔╝
##  ╚═════╝ ╚═╝  ╚═╝   ╚═╝   ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═══╝ ╚══▀▀═╝


# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export PATH=$PATH:$HOME/scripts

#Path Java
export JAVA_HOME=/opt/jdk17
export PATH=$JAVA_HOME/bin:$PATH

# MAVEN
export MAVEN_HOME=/opt/maven
export PATH=$MAVEN_HOME/bin:$PATH

# Path Oracle DB
export ORACLE_HOME=/opt/oracle/product/21c/dbhomeXE
export ORACLE_SID=XE

# Path Weblogic
export PATCH_TOP=/install/weblogicpatch
export ORACLE_HOME=/u01/app/fmw
export PATH=$ORACLE_HOME/OPatch:$PATH

export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export PATH="/usr/local/opt/tcl-tk/bin:$PATH"
export PATH="/usr/local/opt/mysql-client/bin:$PATH"

# ZSH THEMES
#ZSH_THEME="random"
ZSH_THEME="gnzh"
#ZSH_THEME="powerlevel10k/powerlevel10k"

# Add wisely, as too many plugins slow down shell startup.
plugins=(zsh-syntax-highlighting sudo) 
source $ZSH/oh-my-zsh.sh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# export LANG=en_US.UTF-8

# Funciones

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nvim'
 else
   export EDITOR='nvim'
 fi

# pack unpack
extraer (){
	if [ -f $1 ]; then
		case $1 in
			*.tar.bz2)	    tar xvjf $1 ;;
			*.tar.gz)	      tar xvzf $1 ;;
			*.bz2)		      bunzip2 $1 ;;
			*.rar)      	  rar x $1 ;;
			*.gz)	   	      gunzip $1 ;;
			*.tar)		      tar xvf $1 ;;
			*.tbz2)		      tar xvjf $1;;
			*.tgz)		      tar xvzf $1 ;;
			*.zip)		      unzip $1 ;;
			*.Z)		        uncompress $1 ;;
			*.7z)		        7z x $1 ;;
    	*.tar.xz)   	  tar xvf $1 ;;
			*)	echo "No se reconoce el tipo de archivo '$1'...";;
		esac
	else
		echo "'$1' el archivo no es valido!"
	fi
}

# Alias
alias rz='source ~/.zshrc'
alias a="nvim ~/.config/alacritty/alacritty.yml"
alias servicios='sudo systemctl list-unit-files --state=enabled'
alias peso='du -sh * .[A-z0-9]* | sort -n'
alias v="nvim"
alias z="nvim ~/.zshrc"
alias rm="rm -rf"
alias ls="lsd"
alias u="sudo apt-get update -y && sudo apt-get upgrade -y"
alias r="rsync -av --progress --partial"
alias n="sudo nmap -p- -sS --min-rate 5000 --open -vvv -n -Pn $1 -oG allPorts"
alias i="sudo apt-get install"

# Arch
alias s="sudo nvim ~/.config/sxhkd/sxhkdrc"
alias b="sudo nvim ~/.config/bspwm/bspwmrc"
alias w="wal -q -i ~/wallpapers/"
alias reloj="tty-clock -c -C 4"
alias pacsu='sudo pacman -Syyu'                 # update only standard pkgs
alias yaysu='yay -Syu --noconfirm'              # update standard pkgs and AUR pkgs (yay)
alias unlock='sudo rm /var/lib/pacman/db.lck'    # remove pacman lock
alias cleanup='sudo pacman -Rn'  # remove orphaned packages
alias cleanyay="yay -Sc --aur"
#alias cat="bat"
#alias catn="/bin/cat"

# git
alias addup='git add -u'
alias ga='git add .'
alias clone='git clone'
alias gc='git commit -m'
alias gf='git fetch'
alias pull='git pull origin'
alias push='git push origin'
alias gs='git status'  # 'status' is protected name so using 'stat' instead
alias gl='git log --oneline --decorate --all --graph'

#ALIAS IBM WAS
alias dmgr='cd /IBM/WebSphere/AppServer/profiles/Dmgr01/bin'
alias iniciardmgr='dmgr && ./startManager.sh'
alias nodo="cd /IBM/WebSphere/AppServer/profiles/AppSrv01/bin"
alias iniciarnodo='nodo && ./startNode.sh'
alias logs='cd /IBM/WebSphere/AppServer/profiles/AppSrv01/logs'
alias ver='tail -f SystemOut.log'
alias err='tail -f SystemErr.log'
alias was='cd /IBM/WebSphere/AppServer/bin'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
eval "$(starship init zsh)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# HOMEBREW LINUX
#eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
#export HOMEBREW_NO_INSTALL_CLEANUP=TRUE
