#!/bin/sh
sudo add-apt-repository -y ppa:dolphin-emu/ppa
sudo add-apt-repository -y ppa:sergio-br2/vbam-trunk
sudo add-apt-repository -y ppa:gregory-hainaut/pcsx2.official.ppa
sudo add-apt-repository -y ppa:ppsspp/stable
sudo add-apt-repository -y ppa:random-stuff/ppa
sudo apt update

sudo apt-get install -y --allow-unauthenticated -f dosbox fs-uae fs-uae-arcade fs-uae-launcher hatari higan mednafen nestopia pcsxr stella virtualjaguar visualboyadvance yabause yabause-common yabause-qt fceux desmume mupen64plus mupen64plus-qt dolphin-emu vbaexpress zsnes-dbg:i386 pcsx2:i386 ppsspp-sdl snes9x-gtk pokemini mgba-qt vbam-gtk ./deb/Gens_2.16.7_i386.deb

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
