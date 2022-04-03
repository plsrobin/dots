setxkbmap se &
xrandr --output DVI-D-0 --mode 1920x1080 --refresh 144.0 --left-of DP-0 --mode 1920x1080 --refresh 144.0 &
eval $(gnome-keyring-daemon --start)
export SSH_AUTH_SOCK
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export SDL_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
fcitx -d &
exec xmonad
