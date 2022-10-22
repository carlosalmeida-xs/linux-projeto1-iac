#!/bin/bash

echo "Criando diretórios...."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupo de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd carlos2 -m -s /bin/bash -p $(openssl passwd -1 Senha123) -c "Carlos2 da Silva" -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -1 Senha123) -c "Maria da Silva" -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -1 Senha123) -c "João da Silva" -G GRP_ADM


useradd debora -m -s /bin/bash -p $(openssl passwd -1 Senha123) -c "Debora da Silva" -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -1 Senha123) -c "Sebastiana da Silva" -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -1 Senha123) -c "Roberto da Silva" -G GRP_VEN


useradd josefina -m -s /bin/bash -p $(openssl passwd -1 Senha123) -c "Josefina da Silva" -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -1 Senha123) -c "Amanda da Silva" -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -1 Senha123) -c "Rogerio da Silva" -G GRP_SEC

echo "Especificando permissões dos diretórios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "FINALIZADO!!!"

