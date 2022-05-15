#!/bin/bash
echo "Que voulez-vous faire"
echo " 1.Update système complet et redemarer"
echo " 2.Update système complet sans redemarage"
echo " 3.Grub"
echo " 4.Mise a jour des flatpak"
echo "[1,2,3,4]"
read i

#Update avec redemarage 
if [ "$i" == "1" ]
then
    echo "Atention votre systeme vas redemare rapuyer sur entrer pour continuer ou controle c pour anuller"
    dnf update -y
    flatpak update
    echo "redemarage du systeme"
    reboot
fi
#update sans redemarage
if [ "$i" == "2" ]
then
    dnf update -y
    flatpak update
    echo "Votre systeme et a jour"
fi
#Update du grub
if [ "$i" == "3" ]
then
    grub2-mkconfig -o /boot/grub2/grub.cfg
fi

if [ "$i" == "4" ]
then
    flatpak update
    echo "Vos flatpak son a jour"
fi
