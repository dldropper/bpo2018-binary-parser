# bpo2018-binary-parser
The level data for Bad Piggies Online 2018 is stored in two binary files. This tool is used for extracting and rebuilding them.

Expected directory layout:
working_folder/
├── 8_bin_ico_png$1a595001528d98a6f8b332f5a08569961254146276.bin
├── 9_bin_logo_png$609ff28fa1a7b52bbef02c780d94428f-1821665620.bin
├── extract.sh  (or extract.bat)
├── rebuild.sh  (or rebuild.bat)
└── publish/        ← created automatically by extract script
    ├── map/
    ├── level.csv
    ├── boot.json
    └── ...
