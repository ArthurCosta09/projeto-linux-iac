#!/bin/bash

echo "Criar pastas dos devidos funcionários"

mkdir publica
mkdir adm
mkdir ven
mkdir sec

echo "Criar grupo de usuários"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criar usuários"

user add carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
user add maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
user add joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

user add debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
user add sebastiao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
user add roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

user add josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
user add amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
user add rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Inserir as permissões de cada usuário"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publica

echo "Finalizar script..."


