#!/bin/bash

cd ~/RetroPie-Setup/
# remove the config that disables ffmpeg on the RPI
sed -i "s/--disable-ffmpeg//" scriptmodules/emulators/retroarch.sh
# build new retroarch from source
sudo ./retropie_packages.sh retroarch
# put the file back how it was
git checkout scriptmodules/emulators/retroarch.sh
