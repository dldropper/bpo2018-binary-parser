#!/bin/bash
# Rebuild bin files from modified game data
ICO="8_bin_ico_png\$1a595001528d98a6f8b332f5a08569961254146276.bin"
LOGO="9_bin_logo_png\$609ff28fa1a7b52bbef02c780d94428f-1821665620.bin"

echo "Repacking zip..."
zip -r newgamedata.zip publish/ -q

echo "Rebuilding bin files..."
python3 << 'PYEOF'
with open('8_bin_ico_png$1a595001528d98a6f8b332f5a08569961254146276.bin', 'rb') as f:
    ico_data = f.read()
with open('9_bin_logo_png$609ff28fa1a7b52bbef02c780d94428f-1821665620.bin', 'rb') as f:
    logo_data = f.read()
with open('newgamedata.zip', 'rb') as f:
    new_zip = f.read()

split_point = len(new_zip) // 2
new_ico = ico_data[:8227] + new_zip[:split_point]
new_logo = logo_data[:7248] + new_zip[split_point:]

with open('8_bin_ico_png$1a595001528d98a6f8b332f5a08569961254146276.bin', 'wb') as f:
    f.write(new_ico)
with open('9_bin_logo_png$609ff28fa1a7b52bbef02c780d94428f-1821665620.bin', 'wb') as f:
    f.write(new_logo)
print("Done! Copy the bin files back into your game's binaryData folder.")
PYEOF
