#!/bin/sh
sudo apt-get remove -y -f dosbox fs-uae fs-uae-arcade fs-uae-launcher hatari higan mednafen nestopia pcsxr stella virtualjaguar visualboyadvance yabause yabause-common yabause-qt fceux desmume mupen64plus mupen64plus-qt dolphin-emu vbaexpress zsnes-dbg:i386 pcsx2:i386 ppsspp-sdl snes9x-gtk pokemini mgba-qt vbam-gtk gens:i386
sudo apt autoremove -y -f
sudo add-apt-repository --remove -y ppa:dolphin-emu/ppa
sudo add-apt-repository --remove -y ppa:sergio-br2/vbam-trunk
sudo add-apt-repository --remove -y ppa:gregory-hainaut/pcsx2.official.ppa
sudo add-apt-repository --remove -y ppa:ppsspp/stable
sudo add-apt-repository --remove -y ppa:random-stuff/ppa
sudo rm -r /usr/games/linuxdspro/
sudo rm /usr/bin/linuxdspro
sudo rm /usr/share/applications/linuxdspro.desktop
sudo rm /usr/share/pixmaps/linuxdspro.png
echo --------------------------------------------------------------------------------
echo Gracias por usar LinuxDS PRO. Todos los emuladores han sido desinstalados.
