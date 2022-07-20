#! /bin/bash
# Author:               Shutu
# Version:              1.0
# Mail:                 shutu736@gmail.com
# Date:                 2022-2-6
# Description:          dd后续环境

# 基础环境
apt-get install curl nano vim lsof sudo bash-completion -y
timedatectl set-timezone Asia/Shanghai

# 命令补全
echo '
if [ -f /etc/bash_completion ]; then
. /etc/bash_completion
fi' >> ~/.bash_profile && source ~/.bash_profile

# docker和docker-compose
curl -fsSL https://get.docker.com -o get-docker.sh && sh get-docker.sh
curl -L "https://github.com/docker/compose/releases/download/v2.6.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && chmod +x /usr/local/bin/docker-compose && docker-compose --version