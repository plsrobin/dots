#swedish keyboard
setxkbmap se &

#configures screens, did not work in xmonad.hs
xrandr --output DVI-D-0 --mode 1920x1080 --refresh 144.0 --left-of DP-0 --mode 1920x1080 --refresh 144.0
&

#gnome keyring
eval $(gnome-keyring-daemon --start)
export SSH_AUTH_SOCK

#mozc keyboard (japanese)
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export SDL_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
fcitx -d &

#darktheme gt3 -- finns inte
#export gtk-application-prefer-dark-theme=true

#qt5ct, icons dolphin
export QT_QPA_PLATFORMTHEME=qt5ct

#gtk theme
xfsettingsd &

#notifications
dunst &

#automount usb
udiskie &

#starts xmonad
exec xmonad
