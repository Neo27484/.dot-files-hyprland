#!/bin/bash

# Optionen für die Buttons
options="Update System\nLinux-TKG"

# Verwende rofi zur Auswahl
chosen=$(echo -e "$options" | rofi -dmenu -p "Update")

# Führe den entsprechenden Befehl aus
case $chosen in
    "Update System")
        # Führe yay aus
        kitty -T yay-update -e yay
        ;;
    "Linux-TKG")
        # Führe das Skript aus
        bash /home/tobias/.config/DOT-Tobi/script/Linux-TKG
        ;;
    *)
        # Keine Auswahl getroffen
        exit 1
        ;;
esac
