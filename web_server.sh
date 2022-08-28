#!/bin/bash

echo "Efetuando atualizações...!"

apt-get update -y
apt-get upgarde -y

echo "Baixando Apache...!"

apt-get install apache2 -y

echo "Baixando Unzip...!"

apt-get install unzip -y

echo "Criando diretorio dowloads...!"

mkdir /dowloads

echo "Baixando app...!"

cd /dowloads
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

echo "Copiando arquivos...!"

cd linux-site-dio-main
cp -R * /var/www/html/

echo "Finalizando...!"



