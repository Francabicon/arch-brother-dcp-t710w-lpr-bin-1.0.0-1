#! /bin/bash

#install cups common
echo "installing Brother Cups Common..."
cd brother-cups-wrapper-common/

makepkg -si

echo "installing Brother Printer DCP710W Driver and Scanner Driver..."

cd ..

makepkg -si

cd brscan4/

makepkg -si

echo "done!"
