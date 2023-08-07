#!/usr/bin/bash
media_progs="Kodi\nMusic\nCalibre"
choice=$(echo -e "$media_progs" | rofi -dmenu -i -p "Execute:-")

case $choice in
    Kodi)
        kodi
        ;;
    Music)
        wezterm start --always-new-process "ncmpcpp"
        ;;
    Calibre)
        calibre
esac
