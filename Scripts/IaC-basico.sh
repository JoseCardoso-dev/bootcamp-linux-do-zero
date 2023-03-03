#!/bin/bash

echo "Criando diretorios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Diretorios criado!"
echo "Criando grupos..."

groupadd GRP_ADM
groupadd GRP_VEN 
groupadd GRP_SEC

echo "Grupos criado!"
echo "Criando usuarios..."

useradd carlos -m -G GRP_ADM -c "Convidado" -s /bin/bash -p $(openssl passwd -6 Senha123)
useradd maria -m -G GRP_ADM -c "Convidado" -s /bin/bash -p $(openssl passwd -6 senha12345)
useradd joao -m -G GRP_ADM -c "Convidado" -s /bin/bash -p $(openssl passwd -6 senha12345)

useradd debora -m -G GRP_VEN -c "Convidado" -s /bin/bash -p $(openssl passwd -6 senha12345)
useradd sebastiana -m -G GRP_VEN -c "Convidado" -s /bin/bash -p $(openssl passwd -6 senha12345)
useradd roberto -m -G GRP_VEN -c "Convidado" -s /bin/bash -p $(openssl passwd -6 senha12345)

useradd josefina -m -G GRP_SEC -c "Convidado" -s /bin/bash -p $(openssl passwd -6 senha12345)
useradd amanda -m -G GRP_SEC -c "Convidado" -s /bin/bash -p $(openssl passwd -6 senha12345)
useradd rogerio -m -G GRP_SEC -c "Convidado" -s /bin/bash -p $(openssl passwd -6 senha12345)

echo "Usuários criado!"
echo "Configurando permissões..."

chown root:root /publico
chmod 777 /publico

chown root:GRP_ADM /adm
chmod 770 /adm

chown root:GRP_VEN /ven
chmod 770 /ven

chown root:GRP_SEC /sec
chmod 770 /sec

echo "Permissções finalizada! Infraestrutura pronta!"
