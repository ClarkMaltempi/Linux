#!/bin/bash


##começando meu shell script##

sudo rm /var/lib/dpkg/lock-frontend; sudo rm /var/cache/apt/archives/lock;

sudo apt upgrade;

## Download de programas externos##
##Suser - usuário atual
mkdir /home/SUSER/Downloads/programas

cd /home/SUSER/Downloads/programas

#Download de programa externo
wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

#instalar pacotes com essa extensão

sudo dpgk -i*.deb

sudo apt-add-repository ppa:graphics-drivers/ppa

sudo apt install mint-meta-codecs

sudo apt install snapd

sudo snap install spotify

sudo apt upgrade;

## Converter aqrquivo##
##Sem confirmação -y no final do código
sudo apt install winff

##wine

wget -nc https://dl.winehq.org/wine-builds/winehq.key

sudo apt-key add winehq.key

sudo apt update

sudo apt install --install-recommends winehq-stable

echo "Chegamos ao final"





