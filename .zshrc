path+=$HOME/.scripts
path+=$HOME/.cargo/bin
export PATH

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="xiong-chiamiov-plus"

CASE_SENSITIVE="false"

HYPHEN_INSENSITIVE="true"

zstyle ':omz:update' mode disabled
zstyle ':omz:update' frequency 7

HIST_STAMPS="yyyy-mm-dd"

plugins=(
    git
    # nvm
    archlinux
    zsh-autosuggestions
    zsh-history-substring-search
    you-should-use
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

#  ╭─────────╮
#  │ Aliases │
#  ╰─────────╯
# ls
alias ls='ls -hF --color=auto'
alias lr='ls -R'                    # recursive ls
alias ll='ls -l'
alias la='ll -A'
alias lx='ll -BX'                   # sort by extension
alias lz='ll -rS'                   # sort by size
alias lt='ll -rt'                   # sort by date
alias lm='la | bat'
alias lb='ln -i'

# Permissions
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'
alias chx='chmod --preserve-root u+x'

# Privileged access
alias scat='sudo cat'
alias svim='sudo nvim'
alias reboot='sudo systemctl reboot'
alias poweroff='sudo systemctl poweroff'
alias update='sudo pacman -Su'
alias netctl='sudo netctl'
alias nethogs='sudo nethogs'
alias updatedb='sudo updatedb --verbose'

# Pacman
alias pacinn="sudo pacman -S --needed"
alias yainn="yay -S --needed"
alias yainch="yay -S --mflags \"--skipchecksums --skippgpcheck\""

## Modified
alias diff='colordiff'
alias grep='grep --color=auto'
alias more='less'
alias df='df -h'
alias du='du -c -h'
alias mkdir='mkdir -p -v'
alias md='mkdir -p -v'
alias nano='nano -w'
alias ping='ping -c 3'
alias dmesg='dmesg -HL'
alias upgrade="yay -Syu --combinedupgrade"
alias less="bat -f --paging=always"
alias lf='/home/tony/.config/lf/lfrun'
alias nsxiv="nsxiv -a -r -s f"
alias vi="nvim --noplugin"
alias vim="nvim"
alias hist="history | bat"
alias ssh="TERM=xterm-256color $(which ssh)"
alias imwheel="imwheel -b '45'"

#Abbreviated
alias t="trash"
alias firefoxserver="live-server --browser=firefox-developer-edition"
alias chromeserver="live-server --browser=google-chrome-unstable"
alias quteserver="live-server --browser=qutebrowser"
alias unzip="unzip -d ./zip"
alias du1='du --max-depth=1'
alias ..='cd ..'
alias o="xdg-open"
alias gdd="git difftool"
alias gslog="git slog"
alias getdefault="xdg-mime query default"
alias setdefault="xdg-mime default"
alias gettype="xdg-mime query filetype"
alias todo="topydo add"
alias todid="topydo do"
alias todos="topydo ls"
alias code="vscodium"
alias spt="ncspot"
alias sn="sncli -c $HOME/.config/sncli/snclirc"
alias bm="bashmount"
alias scim="sc-im"
alias td="topydo"
alias 2048="2048 bluered"
alias nvms="source '$NVM_DIR/nvm.sh' ${NVM_LAZY+'--no-use'}"
alias dm="dmenu_run"
alias ofetch="onefetch"
alias ra="ranger"

#New
alias openports='ss --all --numeric --processes --ipv4 --ipv6'
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias youtube-dl-playlist-guardar="youtube-dl -x -f bestaudio --external-downloader aria2c --external-downloader-args '-c -j 3 -x 3 -s 3 -k 1M' --ignore-errors --continue --audio-format mp3 'https://www.youtube.com/playlist?list=PLjp-ryEOLdtOGhSXXc2-3VRoyK8uVUjF2'"
alias youtube-dl-playlist="youtube-dl -x -f bestaudio --external-downloader aria2c --external-downloader-args '-c -j 3 -x 3 -s 3 -k 1M' --ignore-errors --continue --no-overwrites --audio-format mp3"
alias android-mount='aft-mtp-mount ~/.mnt'
alias android-umount='fusermount -uz ~/.mnt'
alias fix-android-bar='adb shell settings put global force_fsg_nav_bar 1'

#Multi
alias dwcomp='rm config.h ; sudo make clean install'
alias shutgrade="upgrade --combinedupgrade ; shutdown now"
alias bootgrade="upgrade --combinedupgrade ; reboot"

#Vim file
  #common
alias vw="vim ~/Development/vimwiki/index.wiki"
alias readme="vim README.md"
alias license="vim LICENSE"
alias pson="vim package.json"

  #conf
alias paconf="vim /etc/pacman.conf"
alias zconf="vim ~/.zshrc"
alias piconf="vim ~/.config/picom/picom.conf"
alias alaconf="vim ~/.config/alacritty/alacritty.yml"
alias bindsconf="vim ~/.config/sxhkd/sxhkdrc"
alias qutemarks="vim ~/.config/qutebrowser/quickmarks"
alias qutequick="vim ~/.config/qutebrowser/quickmarks"
alias xinit="vim ~/.xinitrc"
alias viminit="vim ~/.config/nvim/init.lua"
alias vimplug="vim ~/.config/nvim/lua/tony/plugins.lua"
alias vimopt="vim ~/.config/nvim/lua/tony/options.lua"
alias lfconf="vim ~/.config/lf/lfrc"
alias mimeconf="vim ~/.config/mimeapps.list"
alias apacheconf="vim /etc/httpd/conf/httpd.conf"
alias phpconf="vim /etc/php56/php.ini"
alias phpmyadminconf="vim /usr/share/webapps/phpMyAdmin/config.inc.php"

# cd
  #common
alias setcurrent="/home/tony/.scripts/set-current"
alias current="cd /home/tony/Development/web-dev/vue/lachina-menu"

alias desk="cd /usr/share/applications"
alias platzi="cd ~/Development/courses/platzi"
alias wdev="cd ~/Development/web-dev"
alias gdev="cd ~/Development/game-dev"
alias ldev="cd ~/Development/low-dev"
alias latex-cv="cd ~/Documents/LaTeX/curriculum-vitae/"
alias work="cd ~/Development/work/lionintel/php"
alias sshlion="ssh dev@138.68.5.162"
alias cdlampp="cd /opt/lampp/htdocs/"

  #conf
alias dwconf="cd ~/.config/dwm"
alias dmconf="cd ~/.config/dmenu"
alias vimconf="cd ~/.config/nvim"
alias quteconf="cd ~/.config/qutebrowser"
alias rangerconf="cd ~/.config/ranger"
alias packerconf="cd ~/.local/share/nvim/site/pack/packer"
alias nsxivconf="cd ~/.config/nsxiv"

## Media
#audio
alias playwav='mpv *.wav'
alias playogg='mpv *.ogg'
alias playmp3='mpv *.mp3'

#video
alias playavi='vlc *.avi'
alias playmov='vlc *.mov'
alias playmp4='vlc *.mp4'
alias playflv='vlc *.flv'
alias playmkv='vlc *.mkv'

## Error tolerant
alias :q=' exit'
alias :Q=' exit'
alias :x=' exit'
alias cd..='cd ..'

#Grep pipe
alias findprocess='ps -Af | grep'

#  ╭───────────╮
#  │ Functions │
#  ╰───────────╯
# Less pipes
wtfis() { curl "https://cheat.sh/$1" | less }

tip() { tldr "$1" | less }

ie() { bro "$1" | less }

# Vim pipes
gd() {
  if [[ "$1" == "" ]]; then
    git diff | nvim --noplugin
  else
    git diff "$1" | nvim --noplugin
  fi
}

webjpeg() {
  convert $1 -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -colorspace sRGB $2
}

webpng() {
  convert $1 -strip $2
}

websvg() {
  svgo $1 -o $2
}

webjpegbatch() {
  mogrify -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -colorspace sRGB -path "$1" *.jpg
}

webpngbatch() {
  mogrify -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -colorspace sRGB -path "$1" *.png
}



if [[ -d "./intelephense" ]]; then
	trash intelephense
fi
