#! /bin/bash
# Author:               Shutu
# Version:              1.0
# Mail:                 shutu736@gmail.com
# Date:                 2022-2-6
# Description:          Google ZX

apt-get update && curl -sL https://deb.nodesource.com/setup_18.x | bash  - 
apt install nodejs -y
npm i zx -g
node -v
npm -v
git clone https://github.com/shutu777/seedbox.git && cd seedbox
npm i