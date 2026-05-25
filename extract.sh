#!/bin/bash
# Extract game data from bin files
ICO="8_bin_ico_png\$1a595001528d98a6f8b332f5a08569961254146276.bin"
LOGO="9_bin_logo_png\$609ff28fa1a7b52bbef02c780d94428f-1821665620.bin"

echo "Extracting game data..."
dd if="$ICO" bs=1 skip=8227 2>/dev/null > gamedata.zip
dd if="$LOGO" bs=1 skip=7248 2>/dev/null >> gamedata.zip

echo "Unzipping..."
unzip -o gamedata.zip

echo "Done! Edit files in the publish/ folder, then run rebuild.sh"
