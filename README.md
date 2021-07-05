# Speed-linux-Update
Petit code bash pour mettre a jour votre système linux en une seul commande

  Commande utiliser dans le script Red-Hat :
  
    - dnf update
    - flatpak update
    - reboot
    - grub2-mkconfig -o /boot/grub2/grub.cfg
    - dnf list kernel
  

  Commande utiliser dans le script Debian(ubuntu,mint,pop os,...)
  (Le systheme a etait tester sur une POP OS 21.04)

    - apt-get update
    - apt-get upgrade
    - flatpak update
    - reboot

Pour rendre le script executable:

    chmod -x script_Red-Hat.sh 
    
pour rendre le script executable (Version Red-Hat)

    chmod -x script_Debian.sh

pour rendre le script executable (Version Debian)

Executer le script

    ./script_Red-Hat.sh
    
pour etre sur que le script et executable(Version Red-Hat)
    
    ./script_Debian.sh 
    
pour etre sur que le script et executable(Version Debian)    
