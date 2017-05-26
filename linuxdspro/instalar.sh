#!/bin/sh
sudo add-apt-repository ppa:dolphin-emu/ppa -y -f
sudo apt update

sudo apt-get install -y -f dosbox fs-uae fs-uae-arcade fs-uae-launcher hatari higan mednafen nestopia pcsxr stella virtualjaguar visualboyadvance yabause yabause-common yabause-qt fceux desmume mupen64plus mupen64plus-qt dolphin-emu vbaexpress

sudo rm -r /usr/games/linuxdspro/
sudo cp -a bin/ /usr/games/linuxdspro/

sudo rm /usr/bin/linuxdspro
sudo ln -s /usr/games/linuxdspro/linuxdspro /usr/bin/linuxdspro

sudo rm /usr/share/pixmaps/linuxdspro.png
sudo cp bin/linuxdspro.png /usr/share/pixmaps/linuxdspro.png

sudo rm /usr/share/applications/linuxdspro.desktop
sudo cp bin/linuxdspro.desktop /usr/share/applications

echo --------------------------------------------------------------------------------
echo La instalación de LinuxDS PRO ha finalizado.
linuxdspro
