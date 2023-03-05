#!/bin/bash

echo "Atualizando Sistema..."
apt-get update && apt-get upgrade -y

echo "Atualização Completa!"
echo "Instalando pacotes..."

apt-get install apache2 -y
apt-get install unzip -y

echo "Pacotes Instalados!"
echo "Configurando Servidor WEB..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/heads/main.zip
unzip main.zip

cd linux-site-dio-heads-main
cp -R * /var/www/html 

echo "Servidor Configurado! Infraestrutura Pronta!"

