path+=$HOME/.local/bin
path+=$HOME/.cargo/bin
path+=$HOME/.npm/global/bin
path+=$HOME/.local/share/gem/ruby/3.0.0/bi
path+=$HOME/.go/bin
path+=$HOME/.scripts
path+=$HOME/.config/composer/vendor/bin:$PATH
path+=/usr/local/texlive/2023/bin/x86_64-linux
export path

export ZSH="$HOME/.oh-my-zsh"
export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST

# (xiong-chamiov-plus mod)
# shellcheck disable=SC1083
export PROMPT=$'%{\e[0;34m%}%B┌─[%b%{\e[0m%}%{\e[1;32m%}%n%{\e[1;30m%}@%{\e[0m%}%{\e[0;36m%}%m%{\e[0;34m%}%B]%b%{\e[0m%} - %b%{\e[0;34m%}%B[%b%{\e[1;37m%}%5~%{\e[0;34m%}%B]%b%{\e[0m%} - %{\e[0;34m%}%B[%b%{\e[0;33m%}'%D{"%H:%M"}%b$'%{\e[0;34m%}%B]%b%{\e[0m%}
%{\e[0;34m%}%B└─%B[%{\e[1;35m%}$%{\e[0;34m%}%B] <$(git_prompt_info)>%{\e[0m%}%b '
PS2=$' \e[0;34m%}%B>%{\e[0m%}%b '

export CASE_SENSITIVE="false"
export HYPHEN_INSENSITIVE="true"
export HIST_STAMPS="yyyy-mm-dd"
export BC_ENV_ARGS=~/.config/bc/bcrc

export FZF_DEFAULT_COMMAND='fd'

export PROJECT_PATHS=(
  ~/Development/work/saeko
  ~/Development/work/broxia
  ~/Development/mobile-dev
)

export MANPAGER='nvim +Man!'
export LESS='-R -j8 -x4'

export EXA_COLORS="ur=3;33;40m:uw=3;33;40m:ux=3;33;40m:ue=3;33;40m:gr=3;34;40m:gw=3;34;40m:gx=3;34;40m:tr=3;36;40m:tw=3;36;40m:tx=3;36;40m"
export LF_COLORS="*.epub=01;35:*.mobi=01;34:*.lua=01;36:*.json=01;32"

export plugins=(
  nvm
  adb
  aliases
  archlinux
  bun
  colored-man-pages
  common-aliases
  composer
  dirhistory
  docker
  docker-compose
  extract
  gh
  git
  gitignore
  history
  git-flow
  isodate
  jira
  jsontools
  laravel
  npm
  pip
  pj
  safe-paste
	ssh-agent
  sudo
  systemd
  yarn
  zsh-completions
  zsh-autosuggestions
  zsh-history-substring-search
  you-should-use
  zsh-syntax-highlighting
)

fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src

zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 7
zstyle ':omz:plugins:ssh-agent' agent-forwarding yes
zstyle ':omz:plugins:ssh-agent' helper ksshaskpass
zstyle ':omz:plugins:ssh-agent' identities id_rsa id_ed25519_saeko id_ed25519_broxia
zstyle ':omz:plugins:ssh-agent' quiet yes
zstyle ':omz:plugins:ssh-agent' lifetime 4h
zstyle ':omz:plugins:nvm' lazy yes
zstyle ':omz:plugins:nvm' autoload yes
# zstyle ':omz:plugins:nvm' silent-autoload yes


# shellcheck disable=SC1091
source "$ZSH/oh-my-zsh.sh"
source "$HOME/.zsh_aliases"
# source "/usr/share/nvm/init-nvm.sh"

#    ╭───────────╮
#    │ Functions │
#    ╰───────────╯
# Less pipes
tip() {
  curl "https://cheat.sh/$1" | less
}

pi() {
  if [[ "$1" == "" ]]; then
    ping -c 3 gnu.org
  else
    ping -c 3 "$1"
  fi
}

webjpeg() {
  if [ "$#" -lt 2 ]; then
    echo "Usage: webjpeg input_file output_file [resize_option]"
    return 1
  fi

  input_file="$1"
  output_file="$2"
  resize_option="$3"

  if [ -n "$resize_option" ]; then
    convert "$input_file" -resize "$resize_option" -sampling-factor 4:2:0 -strip -quality 80 -strip -interlace JPEG -colorspace sRGB "$output_file"
  else
    convert "$input_file" -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -strip -colorspace sRGB "$output_file"
  fi
}

webpng() {
  if [ "$#" -lt 2 ]; then
    echo "Usage: webpng input_file output_file [resize_option]"
    return 1
  fi

  input_file="$1"
  output_file="$2"
  resize_option="$3"

  if [ -n "$resize_option" ]; then
    convert "$input_file" -resize "$resize_option" -strip -quality 80 -strip "$output_file"
  else
    convert "$input_file" -strip -quality 80 -strip "$output_file"
  fi
}

websvg() {
  svgo "$1" -o "$2"
}

webjpegbatch() {
  mogrify -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -colorspace sRGB -path "$1" ./*.jpg
}

webpngbatch() {
  mogrify -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -colorspace sRGB -path "$1" ./*.png
}

what-command() {
  pacman -Qlq "$1" | grep /usr/bin/
}

dcupdf() {
  docker compose -f "$1" up -d
}

# if [[ -d "/home/tony/intelephense" ]]; then
#   trash /home/tony/intelephense
# fi
# [[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh" # load avn


# garbage {{{
# Empty line after each command
precmd() {
  precmd() {
		# shellcheck disable=SC2317
    echo
  }
}

# pnpm
export PNPM_HOME="/home/tony/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

PATH="/home/tony/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/tony/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/tony/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
# shellcheck disable=SC2089
PERL_MB_OPT="--install_base \"/home/tony/perl5\"";
# shellcheck disable=SC2090
export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/tony/perl5";
export PERL_MM_OPT;
#}}}
