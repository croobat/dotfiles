#!/bin/bash

# keyboard altgr-intl swap caps esc
setxkbmap -layout us -variant altgr-intl -option caps:swapescape
# fast Keyboard
xset r rate 250 40
# longer time before screen turn-off
xset s 1800
# enable touchpad tapping
xinput set-prop 10 'libinput Tapping Enabled' 1

# dpi
[[ -f ~/.Xresources ]] && xrdb -merge -I "$HOME" ~/.Xresources

# touchpad sensitivity
xinput set-prop 'TPPS/2 Elan TrackPoint' 'libinput Accel Speed' +0.1

# unmute amixer
amixer -c 0 -D pipewire sset Master unmute

# export tools
export EDITOR=nvim
export BROWSER=firefox
export GOPATH=/home/tony/.go

# android-studio
export _JAVA_AWT_WM_NONREPARENTING=1

# theme
export QT_QPA_PLATFORMTHEME=qt5ct

# xresources
xrdb -merge ~/.Xresources

# startup apps
picom &
flameshot &
greenclip daemon &
udiskie &
unclutter --timeout 10 &
playerctld daemon &
nm-applet &
thunderbird &

exec awesome