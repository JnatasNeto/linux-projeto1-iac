#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /geg
mkdir /tec 
mkdir /fin

echo "Criando grupos de usuários"

groupadd GRP_GENTEEGESTAO
groupadd GRP_INFRA
groupad  GRP_FINANCEIRO

echo "Criando usuários..."

useradd Soliene -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_GENTEEGESTAO
useradd Samara -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_GENTEEGESTAO
useradd Juliana -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_GENTEEGESTAO

useradd Davi -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_INFRA 
useradd Rafael -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_INFRA
useradd Douglas -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_INFRA

useradd Luisa -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_FINANCEIRO
useradd Caio -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_FINANCEIRO
useradd Diogo -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_FINANCEIRO

echo "Adicionando usuários aos  grupos..."

chown root:GRP_GENTEEGESTAO /gg
chown root:GRP_INFRA /infra
chown root:GRP_FINANCEIRO /fin

chmod 770 /gg
chmod 770 /infra
chmod 770 /fin
chmod 777 /publico

echo "Fim..."

