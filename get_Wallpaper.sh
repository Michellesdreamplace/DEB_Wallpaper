#!/bin/bash
echo "************************************************************"
echo "*  Update package database (repository index) ...          *"
echo "*  + Upgrade ...                                           *"
echo "*  + Clean system of useless packages ...                  *"
echo "************************************************************"
sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y
echo "************************************************************"
echo "*  install git & tar ...                                   *"
echo "************************************************************"
sudo apt install git -y
sudo apt install tar -y
echo "************************************************************"
echo "*  clone Wallpaper from github ...                          *"
echo "************************************************************"
sudo git clone https://github.com/Michellesdreamplace/DEB_Wallpaper.git ~/Downloads/MDP_DEB_Wallpaper/
echo "************************************************************"
echo "*  unpack wallpaper into global share folder ...           *"
echo "************************************************************"
sudo tar -vxzf ~/Downloads/MDP_DEB_Wallpaper/MDP_Wallpaper.tar -C /usr/share/images/desktop-base/
echo "************************************************************"
echo "*  clean up ...                                            *"
echo "************************************************************"
sudo rm -r ~/Downloads/MDP_DEB_Wallpaper
echo "************************************************************"
echo " "
echo " Done ..."
echo " "
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "  Now you can find the new wallpapers in the global directory at:"
echo "  /usr/share/images/desktop-base/"
echo "  Have fun with it"
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
