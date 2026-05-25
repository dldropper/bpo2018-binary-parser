@echo off
echo Extracting game data...
python3 -c "
ico=open('8_bin_ico_png$1a595001528d98a6f8b332f5a08569961254146276.bin','rb').read()
logo=open('9_bin_logo_png$609ff28fa1a7b52bbef02c780d94428f-1821665620.bin','rb').read()
open('gamedata.zip','wb').write(ico[8227:]+logo[7248:])
print('gamedata.zip created')
"
echo Unzipping...
tar -xf gamedata.zip
echo Done! Edit files in the publish\ folder, then run rebuild.bat
pause
