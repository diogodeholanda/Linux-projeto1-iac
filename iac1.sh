#!/bin/bash

echo "Criando diretórios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Diretórios criados"

echo "Criando Grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grupos criados"

echo "Criando usuários e Adicionando aos grupos"

useradd carlos -m -c "Carlos Alberto" -s /bin/bash -p $(openssl passwd -crypt Senha123) -g GRP_ADM
useradd maria -m -c "Maria da Silva" -s /bin/bash -p $(openssl passwd -crypt Senha123) -g GRP_ADM
useradd joao -m -c "João Carlos" -s /bin/bash -p $(openssl passwd -crypt Senha123) -g GRP_ADM

useradd debora -m -c "Debora de Souza" -s /bin/bash -p $(openssl passwd -crypt Senha123) -g GRP_VEN
useradd sebastiana -m -c "Sebatiana Ribeiro" -s /bin/bash -p $(openssl passwd -crypt Senha123) -g GRP_VEN
useradd roberto -m -c "Roberto Carlos" -s /bin/bash -p $(openssl passwd -crypt Senha123) -g GRP_VEN

useradd josefina -m -c "Josefina Antunes" -s /bin/bash -p $(openssl passwd -crypt Senha123) -g GRP_SEC
useradd amanda -m -c "Amanda Oliveira" -s /bin/bash -p $(openssl passwd -crypt Senha12 ) -g GRP_SEC
useradd rogerio -m -c "Rogério dos Santos" -s /bin/bash -p $(openssl passwd -crypt Senha123) -g GRP_SEC

echo "Usuários criados e adicionados aos grupos"

echo "Especificando permissões dos diretórios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Permissões especificadas"
