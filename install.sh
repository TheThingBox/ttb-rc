#!/bin/bash

cd /root

# bashrc
curl "https://raw.githubusercontent.com/TheThingBox/ttb-rc/master/.bashrc" > /root/.bashrc
chmod 644 /root/.bashrc
cp /root/.bashrc /home/pi/

# vimrc
git clone --depth=1 https://github.com/amix/vimrc.git /root/.vim_runtime
sh /root/.vim_runtime/install_awesome_vimrc.sh
rm /root/.vim_runtime/.git* -R
cp /root/.vimrc /home/pi/
cp /root/.vim_runtime /home/pi/ -r

# nanorc
curl "https://raw.githubusercontent.com/scopatz/nanorc/master/install.sh" | sh
cp /root/.nanorc /home/pi/
cp /root/.nano /home/pi/ -r

# motd
curl "https://raw.githubusercontent.com/TheThingBox/ttb-rc/master/motd" > /etc/motd
