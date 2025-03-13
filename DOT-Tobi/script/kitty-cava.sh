#!/bin/bash

# Starte Lollypop
lollypop &

# Warte damit Lollypop starten kann
sleep 1

# Starte Kitty mit cava
kitty --hold -e cava &
