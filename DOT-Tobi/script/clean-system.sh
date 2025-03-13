#!/bin/bash

# Optionen für die Buttons
options="Bereinige Pakete\nBereinige Cache"

# Verwende rofi zur Auswahl
chosen=$(echo -e "$options" | rofi -dmenu -p "System bereinigen")

# Führe den entsprechenden Befehl aus
case $chosen in
    "Bereinige Pakete")
        # Führe yay aus
        kitty -T system-clean -e sudo pacman -Rns $(pacman -Qtdq)

        ;;
    "Bereinige Cache")
        # Führe aus
        kitty -T system-clean -e yay -Sc
        ;;
    *)
        # Keine Auswahl getroffen
        exit 1
        ;;
esac
