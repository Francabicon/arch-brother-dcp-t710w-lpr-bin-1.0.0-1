#! /bin/bash


#install yay repo

read -p "Is yay repo installed in arch [y/N] :" yayins

if [ '$yayins' = null ] || [ -z '$yayins' ]; then
    https://github.com/Jguer/yay.git

    cd yay

    makepkg -si
continue
fi


#install cups common
echo "installing Brother Cups Commons and Scanner dependencies ..."

yay -S brscan4 brscan-skey brother-cups-wrapper-common

#installing custom packages
echo "installing Brother DCP-T710W Driver"
makepkg -si

echo "Installation Completed!!! "
echo "NOTE Scanner won't be automatically activated !!!"
echo "To Activate Scanner in Arch Linux in the terminal:"
echo "brsaneconfig4 -a name='SCANNER_DCP-T710W' model='DCP-T710W' ip:<IP ADDRESS>"
echo "Replace <IP ADDRESS> with your IP address"
