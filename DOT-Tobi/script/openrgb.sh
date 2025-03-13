#!/bin/bash

# Name des Profils, das geladen werden soll
PROFILE_NAME="Iceblue"

# Pfad zur OpenRGB-Binärdatei (falls OpenRGB nicht im PATH ist, anpassen)
OPENRGB_BIN="/usr/bin/openrgb"

# OpenRGB starten mit dem Profil und im Hintergrund
$OPENRGB_BIN --profile "$PROFILE_NAME" --startminimized &
