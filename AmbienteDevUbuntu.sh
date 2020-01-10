#!/bin/bash

## Removendo travas eventuais do apt ##

sudo rm /var/lib/dpkg/lock-frontend ; sudo rm /var/cache/apt/archives/lock ;

## Atualizando o repositório ##

sudo apt update &&

## Instalando pacotes e programas do repositório deb do Ubuntu ##

sudo apt install build-essential default-jdk libssl-dev exuberant-ctags ncurses-term ack-grep silversearcher-ag fontconfig imagemagick libmagickwand-dev software-properties-common git vim-gtk3 curl apt-transport-https ca-certificates gnupg-agent software-properties-common tmux -y &&


## Instalando o DB's ##
sudo apt install postgresql-11 postgresql-contrib postgresql-server-dev-11 redis-server libhiredis-dev memcached libmemcached-dev -y &&
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 9DA31620334BD75D9DCB49F368818C72E52529D4 &&
sudo apt-get install -y mongodb-org -y &&
sudo systemctl status mongodb  &&
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - &&
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable" &&  sudo apt install docker-ce &&
sudo usermod -aG docker ${USER} &&
su - ${USER} &&

## Instalando pacotes Snap ##

sudo snap install android-studio --classic &&  
sudo snap install slack --classic &&  
sudo snap install code --classic &&  
sudo snap install insomnia &&  
sudo snap install wps-office-multilang && 

## Adicionando repositório Instalar NodeJS ##

curl -sL https://deb.nodesource.com/setup_12.x | sudo bash - &&
sudo apt install nodejs &&
sudo npm install -g react-native-cli &&
sudo yarn global add react-native-cli &&

## Instalar Java##
sudo add-apt-repository ppa:openjdk-r/ppa &&
sudo apt-get update &&
sudo apt-get install openjdk-8-jdk &&
java -version &&

## Libs Graficas##
sudo apt-get install gcc-multilib lib32z1 lib32stdc++6 &&


## Atualização do sistema ##

sudo apt update && sudo apt dist-upgrade -y && sudo apt autoclean -y && sudo apt autoremove -y &&

echo "Instalação Finalizada e Configurada agora é só Aproveitar! ;)
