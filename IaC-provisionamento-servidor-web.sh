#!/bin/bash

echo "Iniciando o provisionamento do servidor..."
echo "Atualizando serviços"
apt-get update -y
apt-get upgrade -y

echo "Instalando o Apache..."
apt-get install apache2 -y

echo "Instalando o unzip..."
apt-get install unzip -y

echo "Baixando arquivos do servidor web..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando site..."
unzip main.zip

echo "Copiando arquivos para repositório do Apache..."
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Fim do provisionamento"
