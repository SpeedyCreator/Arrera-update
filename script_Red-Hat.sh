#!/bin/bash

echo "/!\ Ce programme dois etre lancer par l'utilisateur ROOT /!\ "
echo "Bienvenu sur le système de mise a jour centraliser pour le système Linux Fedora"
echo "Que voulez mettre a jour:"
echo " 1.Update système(dnf)"
echo " 2.Update Faltpak"
echo " 3.Update système et Faltpak(dnf+faltpak)"
echo " 4.Grub"
echo " "
echo "[1,2,3,4]"
read reponse

#Update du systeme 
if [ "$reponse" == "1" ]
then
    dnf update -y
    echo "Voulez-vous redemarer ?"
    echo "[O,N]"
    read reponse2
    if ["$reponse2" == "o" ,"$reponse2" == "O" ]
    then
    reboot
    fi
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
    dnf update -y
    flatpak update
    echo "Voulez-vous redemarer ?"
    echo "[O,N]"
    read reponse2
    if ["$reponse2" == "o" ,"$reponse2" == "O" ]
    then
    reboot
    fi
fi
#___________________


#Update du grub
if [ "$reponse" == "4" ]
then
    grub2-mkconfig -o /boot/grub2/grub.cfg
    echo "Voulez-vous redemarer ?"
    echo "[O,N]"
    read reponse2
    if ["$reponse2" == "o" ,"$reponse2" == "O" ]
    then
    reboot
    fi
fi
#___________________
