#!/bin/bash
#set -e
##################################################################################################################
# Written to be used on 64 bits computers
# Author 	: 	DarkXero
# Website 	: 	http://xerolinux.xyz
##################################################################################################################
clear
tput setaf 3
echo "#####################################################"
echo "#                  Xero Grub Themes                 #"
echo "#####################################################"
tput sgr0
echo
echo "$USER detected, select a theme to apply..."
echo
echo "1. Catppuccin Mocha (XeroLinux)."
echo "2. Simple Base Style Purple (XeroLinux)."
echo
echo "Type Your Selection. To Exit, just close Window."
echo

while :; do

read CHOICE

case $CHOICE in

    1 )
      echo
	  sleep 2
      cd XeroCat/ && sudo sh install.sh
      sleep 2
      echo
      clear && sh $0

      ;;

    2 )
      echo
	  sleep 2
      cd XeroSimple/ && sudo sh install.sh
      sleep 2
      echo
      clear && sh $0

      ;;

    8 )
      echo
	  sleep 2
      cd XeroSweet/ && sudo sh install.sh
      sleep 2
      echo
      clear && sh $0

      ;;

    * )
      echo "#################################"
      echo "    Choose the correct number    "
      echo "#################################"
      ;;
esac
done
