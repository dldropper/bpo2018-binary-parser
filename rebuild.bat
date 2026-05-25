@echo off
echo Repacking zip...
tar -czf newgamedata.zip publish\
echo Rebuilding bin files...
python3 -c "
ico=open('8_bin_ico_png$1a595001528d98a6f8b332f5a08569961254146276.bin','rb').read()
logo=open('9_bin_logo_png$609ff28fa1a7b52bbef02c780d94428f-1821665620.bin','rb').read()
z=open('newgamedata.zip','rb').read()
s=len(z)//2
open('8_bin_ico_png$1a595001528d98a6f8b332f5a08569961254146276.bin','wb').write(ico[:8227]+z[:s])
open('9_bin_logo_png$609ff28fa1a7b52bbef02c780d94428f-1821665620.bin','wb').write(logo[:7248]+z[s:])
print('Done! Copy the bin files back into your game binaryData folder.')
"
pause
