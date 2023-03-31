#!/bin/bash

echo "Atualizando servidor..."
apt-get update -y && apt-get upgrade -y
apt-get install apache2 -y 
apt-get install unzip -y

echo "Baixando e copiando dependencias..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html

echo "Configuração Finalizada com Sucesso"
