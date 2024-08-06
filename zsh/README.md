## zsh

```
 pacman -S zsh
```

## Oh My Zsh

```
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

## PowerLevel10k

```
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
```

Then you need to enable it, change the value of ZSH_THEME to following in ~/.zshrc file :
```
ZSH_THEME="powerlevel10k/powerlevel10k"
```

config 
```
p10k configure
``` 
-> `.p10k.zsh`

## Plugins (Optional, Good to have!)

`zsh-syntax-highlighting` - It enables highlighting of commands whilst they are typed at a zsh prompt into an interactive terminal. This helps in reviewing commands before running them, particularly in catching syntax errors

```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

`zsh-autosuggestions` - It suggests commands as you type based on history and completions. 

```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

`zsh-completions` - The zsh-completions plugin for Zsh provides additional command-line completions that are not included by default in Zsh or Oh My Zsh.
```
git clone https://github.com/zsh-users/zsh-completions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-completions
```

## Packages :

```
paru -S --needed \
zsh \
git \
neovim \
bat \
cmatrix \
hw-probe \
eza \
topgrade \
expac \
paru \
yay \
fzf \
xclip \
dolphin \
tokei \
procs \
xorg-xrandr \
unzip \
p7zip \
bzip2 \
gzip \
oh-my-zsh-git \
zsh-theme-powerlevel10k \
zsh-autosuggestions \
zsh-syntax-highlighting \
zsh-completions \
fastfetch
man-db
bat-extras
xclip
```