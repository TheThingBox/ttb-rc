#!/bin/bash

cd /root

apt-get install -yq curl git vim nano

# bashrc
curl "https://raw.githubusercontent.com/TheThingBox/ttb-rc/master/.bashrc" > /root/.bashrc
chmod 644 /root/.bashrc

# vimrc
git clone --depth=1 https://github.com/amix/vimrc.git /root/.vim_runtime
sh /root/.vim_runtime/install_awesome_vimrc.sh
rm /root/.vim_runtime/.git* -R

# nanorc
curl "https://raw.githubusercontent.com/scopatz/nanorc/master/install.sh" | sh
cp /root/.nanorc /home/pi/
