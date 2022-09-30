#!/bin/bash

echo "Criando pastas"
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec
echo "Feito"


echo "Criando grupos de usuários"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
echo "Grupos criados"



echo "Criando usuarios"
useradd carlos -m  -s /bin/bash -p $(openssl passwd -apr1 123456) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -apr1 123456) -G GRP_ADM
useradd joao_ -m -s /bin/bash -p $(openssl passwd -apr1 123456) -G GRP_ADM
useradd debora -m -s /bin/bash -p $(openssl passwd -apr1 123456) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -apr1 123456) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -apr1 123456) -G GRP_VEN
useradd josefina -m -s /bin/bash -p $(openssl passwd -apr1 123456) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -apr1 123456) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -apr1 123456) -G GRP_SEC
echo "Feito"

echo "Redefinindo permissões"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Feito"
