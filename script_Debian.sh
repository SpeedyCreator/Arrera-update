#!/bin/bash

echo "/!\ Ce programme dois etre lancer par l'utilisateur ROOT /!\ "
echo "Bienvenu sur le système de mise a jour centraliser pour le système Linux Fedora"
echo "Que voulez mettre a jour:"
echo " 1.Update système(dnf)"
echo " 2.Update Faltpak"
echo " 3.Update système et Faltpak(dnf+faltpak)"
echo " 4.Update système et Faltpak avec redemarage(dnf+faltpak+reboot)"
echo " 5.Grub"
echo " "
echo "Que voulez-vous faire(1,2,3,...):"
read reponse

#Update du systeme 
if [ "$reponse" == "1" ]
then
    apt-get update
    apt-get upgrade
fi
#___________________

#Update du flatpak
if [ "$reponse" == "2" ]
then
    flatpak update
fi
#___________________

#Update du systeme + flatpak
if [ "$reponse" == "3" ]
then
    apt-get update
    apt-get upgrade
    flatpak update
fi
#___________________

#Update du systeme + flatpak + reboot
if [ "$reponse" == "3" ]
then
    apt-get update
    apt-get upgrade
    flatpak update
    reboot
fi
#___________________

#Update du grub
if [ "$reponse" == "4" ]
then
    grub2-mkconfig -o /boot/grub2/grub.cfg
fi
#___________________