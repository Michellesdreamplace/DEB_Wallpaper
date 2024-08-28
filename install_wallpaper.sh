#!/bin/bash
BENUTZER=$USER
echo "Huhu $BENUTZER"
HOMEVERZEICHNIS=$HOME
echo "Dein Home-Verzeichnis ist: $HOMEVERZEICHNIS"
echo "************************************************************"
echo "    lese Paketdatenbank (Repository-Index) neu ein"
echo "    und finde defekte Pakete ..."
echo " ..."
sudo apt update --fix-missing
echo "************************************************************"
echo "    alle vorhandene defekte Paketen finden und reparieren ..."
echo " ..."
sudo apt install -f
echo "************************************************************"
echo "    lese Paketdatenbank (Repository-Index) neu ein"
echo " ..."
sudo apt update
echo "************************************************************"
echo "    Installierte Pakete werden auf eine neuere Version aktualisiert ..."
echo "    ... um geänderte Abhängigkeiten zu erfüllen,"
echo "    werden ge­ge­be­nen­falls auch neue Pakete installiert ..."
echo " ..."
sudo apt upgrade -y
echo "************************************************************"
echo "    bereinige System von nutzlosen Paketen ..."
echo "    deinstalliere alle automatisch installierten Pakete,"
echo "    die keine Abhängigkeiten mehr zu anderen Paketen haben"
echo "    und deshalb nicht mehr benötigt werden ..."
echo " ..."
sudo apt autoremove -y
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
sudo tar -xzf $HOMEVERZEICHNIS/Downloads/MDP_DEB_Wallpaper/MDP_Wallpaper.tar -C /usr/share/images/desktop-base/
echo "************************************************************"
echo "    aufräumen ..."
echo " ..."
sudo rm -r $HOMEVERZEICHNIS/Downloads/MDP_DEB_Wallpaper
echo "************************************************************"
echo " "
echo "    Fertig ..."
echo " "
echo "  Du findst die neuen Hintergrundbilder im globalen Verzeichnis unter:"
echo "  /usr/share/images/desktop-base/"
echo "  Viel Spaß damit :)"
echo " "
echo "************************************************************"
