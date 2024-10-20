# Run fastfetch unless inside VS Code or VSCodium
if [[ "$TERM_PROGRAM" != "vscode" && "$TERM_PROGRAM" != "vscode-insiders" && "$TERM_PROGRAM" != "Codium" ]]; then
    fastfetch
fi

# Alias to use 'codium' if available, otherwise 'code'
if command -v codium &> /dev/null; then
    alias code='codium'
else
    alias code='code'
fi

typeset -g POWERLEVEL9K_INSTANT_PROMPT=off

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Path to your Snap installation.
export PATH=$PATH:/snap/bin

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"
unsetopt correct

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git 
    aliases 
    alias-finder
    archlinux 
    branch 
    docker-compose
    emoji
    github 
    jump 
    rust
    zsh-autosuggestions 
    zsh-syntax-highlighting 
    zsh-completions 
    zsh-interactive-cd 
    zsh-navigation-tools
    history history-substring-search
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='nvim'
fi

# History
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# Path to bat config
export BAT_CONFIG_PATH="~/.config/bat/config.conf"

# Replace stuff with bat
alias cat='bat '
alias man='batman '
alias grep='batgrep '
alias diff='batdiff '

# To use batpipe, eval the output of this command in your shell init script.
LESSOPEN="|/usr/bin/batpipe %s";
export LESSOPEN;
unset LESSCLOSE;

# The following will enable colors when using batpipe with less:
LESS="$LESS -R";
BATPIPE="color";
export LESS;
export BATPIPE;

#iso and version used to install XeroLinux
alias iso="cat /etc/lsb-release"

##Cmatrix thing
alias matrix='cmatrix -s -C cyan'y

#systeminfo
alias probe='sudo -E hw-probe -all -upload'

# Replace ls with eza
alias ls='eza --color=always --group-directories-first' # preferred listing
alias la='eza -a --color=always --group-directories-first'  # all files and dirs
alias ll='eza -l --color=always --group-directories-first'  # long format
alias lt='eza -a --tree --level=1' # tree listing
alias l='eza -lah --color=always --group-directories-first' # all fules and dirs + additional info

#pacman unlock
alias unlock='sudo rm /var/lib/pacman/db.lck'

#available free memory
alias free='free -mt'

#continue download
alias wget='wget -c'

#readable output
alias df='df -h'

#userlist
alias userlist='cut -d: -f1 /etc/passwd'

#Pacman for software managment
alias upall='topgrade'
alias search='sudo paru -Qs'
alias remove='sudo paru -R'
alias install='sudo paru -S'
alias linstall='sudo paru -U '
alias update='sudo paru -Syyu'
alias clrcache='sudo paru -Scc'
alias orphans='sudo paru -Rns $(paru -Qtdq)'
alias akring='sudo paru -Sy archlinux-keyring --noconfirm'

# Paru/Yay stuff
alias pget='paru -S '
alias yget='yay -S '
alias yrem='yay -R '
alias prem='paru -R '

#Flatpak Update
alias fpup='flatpak update'

#skip integrity check
alias paruskip='paru -S --mflags --skipinteg'
alias yayskip='yay -S --mflags --skipinteg'

#grub update
alias grubup='sudo grub-mkconfig -o /boot/grub/grub.cfg'

#Bash aliases
alias mkfile='touch'
alias jctl='journalctl -p 3 -xb'
alias breload='cd ~ && source ~/.bashrc'
alias zreload='cd ~ && source ~/.zshrc'
alias pingme='ping -c64 github.com'
alias cls='clear && neofetch'
alias traceme='traceroute github.com'

#hardware info --short
alias hw='hwinfo --short'

#GiT  command
alias gc='git clone '
alias gp='git pull'
alias glog='git log --pretty=format:"%h %d | %s %d [%an]" --graph --date=short'
alias gs='git status'
alias gd='git diff'
alias gclear='git clean -fdx'

gac() {
  if [ "$#" -eq 0 ]; then
    echo "Usage: gac \"commit message\""
    return 1
  fi
  git add -A
  git commit -m "$*"
}

#Copy/Remove files/dirs
alias rmd='rm -r'
alias srm='sudo rm'
alias srmd='sudo rm -r'
alias cpd='cp -R'
# alias scp='sudo cp'
alias scpd='sudo cp -R'

#nano
alias nz='$EDITOR ~/.zshrc'
alias nbashrc='sudo nano ~/.bashrc'
alias nzshrc='sudo nano ~/.zshrc'
alias nsddm='sudo nano /etc/sddm.conf'
alias pconf='sudo nano /etc/pacman.conf'
alias mkpkg='sudo nano /etc/makepkg.conf'
alias ngrub='sudo nano /etc/default/grub'
alias smbconf='sudo nano /etc/samba/smb.conf'
alias nlightdm='sudo $EDITOR /etc/lightdm/lightdm.conf'
alias nmirrorlist='sudo nano /etc/pacman.d/mirrorlist'
alias nsddmk='sudo $EDITOR /etc/sddm.conf.d/kde_settings.conf'

#cd/ aliases
alias home='cd ~'
alias etc='cd /etc/'
alias music='cd ~/Music'
alias vids='cd ~/Videos'
alias conf='cd ~/.config'
alias desk='cd ~/Desktop'
alias pics='cd ~/Pictures'
alias dldz='cd ~/Downloads'
alias docs='cd ~/Documents'
alias sapps='cd /usr/share/applications'
alias lapps='cd ~/.local/share/applications'
# shared partition
alias shared='cd /run/media/gl0dny/shared'
# workspace
alias work='cd ~/workspace'
# dotfiles
alias dotfiles='cd ~/dotfiles'
# edit zshrc
alias czsh='code ~/.zshrc'

#receive the key of a developer
alias gpg-retrieve='gpg2 --keyserver-options auto-key-retrieve --receive-keys'

#switch between lightdm and sddm
alias tolightdm="sudo pacman -S lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings --noconfirm --needed ; sudo systemctl enable lightdm.service -f ; echo 'Lightm is active - reboot now'"
alias tosddm="sudo pacman -S sddm --noconfirm --needed ; sudo systemctl enable sddm.service -f ; echo 'Sddm is active - reboot now'"

#Recent Installed Packages
alias rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -200 | nl"
alias riplong="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -3000 | nl"

#Package Info
alias info='sudo pacman -Si '
alias infox='sudo pacman -Sii '

##Refresh Keys
alias rkeys='sudo pacman-key --refresh-keys'

#shutdown or reboot
alias sr='sudo reboot'
alias ssn='sudo shutdown now'

# # ex = EXtractor for all kinds of archives
# # usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   unzstd $1    ;;
      *)           echo ''$1' cannot be extracted via ex()' ;;
    esac
  else
    echo ''$1' is not a valid file'
  fi
}

#neovim & neovide
alias v='nvim'
alias vi='nvim'
alias vim='nvim'
alias vide='neovide'

#tokei
alias tokei="tokei -f"

#procs
alias ps="procs"

#fzf
alias f="fzf"

#tokei
alias plang="tokei"

#morefzf
source /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh

#package searching
export CATPAC='cat <(pacman -Si {1}) <(pacman -Fl {1} | awk "{print \$2}")'
alias findpac='pacman -Slq | fzf -m --preview $CATPAC | xargs -ro sudo pacman -S'

export CATPAC='cat <(pacman -Si {1}) <(pacman -Fl {1} | awk "{print \$2}")'
alias findparu='paru -Slq | fzf -m --preview $CATPAC | xargs -ro sudo paru -S'

export CATYAY='cat <(yay -Si {1}) <(yay -Fl {1} | awk "{print \$2}")' 
alias findyay='yay -Slq | fzf -m --preview $CATYAY | xargs -ro  yay -S'

#clear
alias c="clear"

# Always mkdir a path (this doesn't inhibit functionality to make a single dir)
alias mkdir='mkdir -p'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Rust stuff
#2024# . "$HOME/.cargo/env" 

# clipboard piping, example : echo "Hello" | clip
alias clip='xclip -selection clipboard'

# dolphin
alias dol='dolphin .'

# export for pip3
export PATH="/home/gl0dny/.local/bin:$PATH"

# Editor
export EDITOR='/usr/bin/nvim'

# Okular pdf
alias pdf='okular'

# restart Network Manager
alias wifi='sudo systemctl restart NetworkManager'

# VNC viewer
alias vnc='vncviewer'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# zoxide
eval "$(zoxide init zsh)"
alias cd='z'
