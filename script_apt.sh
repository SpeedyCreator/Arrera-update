#!/bin/bash
echo "Que voulez-vous faire"
echo " 1.Update système complet et redemarer"
echo " 2.Update système complet sans redemarage"
echo " 3.Mise a jour des flatpak"
echo "[1,2,3]"
read i

#Update avec redemarage 
if [ "$i" == "1" ]
then
    echo "Atention votre systeme vas redemarer apuyer sur entrer pour continuer ou controle c pour anuller"
    apt-get update
    apt-get upgrade -y
    flatpak update
    echo "redemarage du systeme"
    reboot
fi
#update sans redemarage
if [ "$i" == "2" ]
then
    apt-get update
    apt-get upgrade -y
    flatpak update
    echo "Votre systeme et a jour"
fi

if [ "$i" == "3" ]
then
    flatpak update
    echo "Vos flatpak son a jour"
fi