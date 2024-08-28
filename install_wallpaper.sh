#!/bin/bash
echo "************************************************************"
echo "    aktualisiere Paketdatenbank (Repository-Index) ..."
echo " ..."
sudo apt update
echo "************************************************************"
echo "    führe upgrade duch ..."
echo " ..."
sudo apt upgrade -y
echo "************************************************************"
echo "    bereinige System von nutzlosen Paketen ..."
echo " ..."
sudo apt autoremove -y
echo "************************************************************"
echo "    installiere git ..."
echo " ..."
sudo apt install git -y
echo "************************************************************"
echo "    installiere tar ..."
echo " ..."
sudo apt install tar -y
echo "************************************************************"
echo "    klone Hintergrundbilder von GitHub ..."
echo " ..."
sudo git clone https://github.com/Michellesdreamplace/DEB_Wallpaper.git ~/Downloads/MDP_DEB_Wallpaper/
echo "************************************************************"
echo "    entpacke Hintergrundbilder in globalen Freigabeordner ..."
echo " ..."
sudo tar -vxf ~/Downloads/MDP_DEB_Wallpaper/MDP_Wallpaper.tar -C /usr/share/images/desktop-base/
echo "************************************************************"
echo "    aufräumen ..."
echo " ..."
sudo rm -r ~/Downloads/MDP_DEB_Wallpaper
echo "************************************************************"
echo " "
echo "    Fertig ..."
echo " "
echo "  Du findst die neuen Hintergrundbilder im globalen Verzeichnis unter:"
echo "  /usr/share/images/desktop-base/"
echo "  Viel Spaß damit :)"
echo " "
echo "************************************************************"
