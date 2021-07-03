#!/bin/bash

echo "/!\ Ce programme dois etre lancer par l'utilisateur ROOT /!\ "
echo "Bienvenu sur le système de mise a jour centraliser pour le système Linux Fedora"
echo "Que voulez mettre a jour:"
echo " 1.Update système(dnf)"
echo " 2.Update Faltpak"
echo " 3.Update système et Faltpak(dnf+faltpak)"
echo " 4.Update système et Faltpak avec redemarage(dnf+faltpak+reboot)"
echo " 5.Grub"
echo " 6.Lister les Kernel"
echo " "
echo "Que voulez-vous faire(1,2,3,...):"
read reponse

#Update du systeme 
if [ "$reponse" == "1" ]
then
    dnf update
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
    dnf update
    flatpak update
fi
#___________________

#Update du systeme + flatpak + reboot
if [ "$reponse" == "4" ]
then
    dnf update
    flatpak update
    reboot
fi
#___________________

#Update du grub
if [ "$reponse" == "5" ]
then
    grub2-mkconfig -o /boot/grub2/grub.cfg
fi
#___________________

#liste des kernel disponible
if [ "$reponse" == "6" ]
then
   dnf list kernel
fi
#___________________