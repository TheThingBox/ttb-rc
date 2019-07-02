#!/bin/bash

cd /root

# bashrc
curl -h "https://gist.githubusercontent.com/lucaspouchot/fc42e4e18f687a4f57c30a293eb25a1d/raw/fa5212ab2dab95c6add692038a372dc86e4e2b45/.bashrc" > /root/.bashrc
chmod 644 /root/.bashrc
cp /root/.bashrc /home/pi/

# vimrc
git clone --depth=1 https://github.com/amix/vimrc.git /root/.vim_runtime
sh /root/.vim_runtime/install_awesome_vimrc.sh
rm /root/.vim_runtime/.git* -r

# nanorc
curl https://raw.githubusercontent.com/scopatz/nanorc/master/install.sh | sh
cp /root/.nanorc /home/pi/
cp /root/.nano /home/pi/ -r
