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
echo "installing Brother Cups Commons and scanner dependencies ..."

yay -S brscan4 brscan-skey brother-cups-wrapper-common

#installing custom packages
echo "installing Brother DCP-T710W Driver"
makepkg -si

