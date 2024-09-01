#!/bin/bash
BENUTZER=$USER
HOMEVERZEICHNIS=$HOME
MYSHELL=$SHELL
echo "Hallo $BENUTZER"
echo "Dein Home-Verzeichnis: $HOMEVERZEICHNIS"
echo "Deine Shell: $MYSHELL"
echo "************************************************************"
echo "    installiere git (falls nicht vorhanden) ..."
echo "    ... um Repositories klonen zu können ..."
echo " ..."
sudo apt install git -y
echo "************************************************************"
echo "    installiere tar (falls nicht vorhanden) ..."
echo "    ... um Dateien entpacken zu können ..."
echo " ..."
sudo apt install tar -y
echo "************************************************************"
echo "    klone Hintergrundbilder von GitHub ..."
echo " ..."
sudo git clone https://github.com/Michellesdreamplace/DEB_Wallpaper.git $HOMEVERZEICHNIS/Downloads/MDP_DEB_Wallpaper/
echo "************************************************************"
echo "    entpacke Hintergrundbilder in globalen Freigabeordner ..."
echo " ..."
sudo mkdir -p /usr/share/images/desktop-base/MDP-Wallpaper
sudo tar -xzf $HOMEVERZEICHNIS/Downloads/MDP_DEB_Wallpaper/MDP_Wallpaper.tar.gz -C /usr/share/images/desktop-base/MDP-Wallpaper/
echo "************************************************************"
echo "    aufräumen ..."
echo " ..."
sudo rm -r $HOMEVERZEICHNIS/Downloads/MDP_DEB_Wallpaper
echo "************************************************************"
echo " "
echo "    Fertig ..."
echo " "
echo "  Du findst die neuen Hintergrundbilder im globalen Verzeichnis unter:"
echo "  /usr/share/images/desktop-base/MDP-Wallpaper/"
echo "  Viel Spaß damit :)"
echo " "
echo "************************************************************"
