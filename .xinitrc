#!/bin/bash

# Dual monitor
# xrandr --output HDMI-0 --mode 1920x1080 --rate 99.93
xrandr --output HDMI-1-1 --auto --pos -1600x480
xrandr --output HDMI-0 --mode 1920x1080 --rate 120

# Keyboard altgr-intl swap caps esc
setxkbmap -layout us -variant altgr-intl -option caps:swapescape

# Slow Mouse
xinput set-prop 'Logitech G203 LIGHTSYNC Gaming Mouse' 'libinput Accel Speed' -0.75

# Fast Keyboard
xset r rate 250 40

# Hibernate
xset -dpms
xset s off

# Export defaults
export EDITOR=nvim
export BROWSER=qutebrowser

# GTK prefer dark theme
gsettings set org.gnome.desktop.interface color-scheme prefer-dark

# Pager
# export PAGER='bat -f --paging=always'
export LESS='-R -j8'
export MANPAGER='less'
export LESS_TERMCAP_mb=$'\e[1;34m'
export LESS_TERMCAP_md=$'\e[1;3;34m'
export LESS_TERMCAP_us=$'\e[3;4;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_ue=$'\e[0m'
# export LESS_TERMCAP_so=$'\e[7;33;40m'

# Startup apps
sxhkd -t 2 &
xbindkeys -f "$XDG_CONFIG_HOME"/xbindkeys/config &
picom &
flameshot &
nitrogen --restore &
greenclip daemon &
dunst &
numlockx &
unclutter --timeout 10 &
lxsession &

while true; do
	while true; do
		xsetroot -name "$( date +"%F %R" --date="2 minutes")"
		sleep 1m
	done &
	# Log stderror to a file
	dwm 2> ~/.config/dwm/dwm.log
	# No error logging
	#dwm >/dev/null 2>&1
done
