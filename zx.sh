#! /bin/bash
# Author:               Shutu
# Version:              1.0
# Mail:                 shutu736@gmail.com
# Date:                 2022-2-6
# Description:          Google ZX

apt-get update && apt-get install curl -y
curl -sL https://deb.nodesource.com/setup_18.x | bash  - 
apt-get install nodejs -y
node -v
npm -v
npm i zx -g
npm i cfonts -g
npm i minimist -g