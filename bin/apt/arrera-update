#!/bin/bash
echo "Que voulez-vous faire"
echo " 1.Update système complet et redemarer"
echo " 2.Update système complet sans redemarage"
echo "[1,2]"
read reponse

#Update avec redemarage 
if [ "$reponse" == "1" ]
then
    echo "Atention votre systeme vas redemarerapuyer sur entrer pour continuer ou controle c pour anuller"
    apt-get update
    apt-get upgrade -y
    flatpak update
    echo "redemarage du systeme"
    reboot
fi
#update sans redemarage
if [ "$reponse" == "2" ]
then
    apt-get update
    apt-get upgrade -y
    flatpak update
    echo "Votre systeme et a jour"
fi