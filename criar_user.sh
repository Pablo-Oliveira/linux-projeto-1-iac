#!/bin/bash

echo "Criando diretórios."
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuarios do sistema."


useradd carlos -c "Usuario Grupo ADM"  -m -s /bin/bash -m -p $(openssl passwd -1 123) -G GRP_ADM
passwd carlos -e
useradd maria -c "Usuario Grupo ADM"  -m -s /bin/bash -m -p $(openssl passwd -1 123) -G GRP_ADM
passwd maria -e
useradd joao -c "Usuario Grupo ADM"  -m -s /bin/bash -m -p $(openssl passwd -1 123) -G GRP_ADM
passwd joao -e

useradd debora -c "Usuario Grupo VEN"  -m -s /bin/bash -m -p $(openssl passwd -1 123) -G GRP_VEN
passwd debora -e
useradd sebastiana -c "Usuario Grupo VEN"  -m -s /bin/bash -m -p $(openssl passwd -1 123) -G GRP_VEN
passwd sebastiana -e
useradd roberto -c "Usuario Grupo VEN"  -m -s /bin/bash -m -p $(openssl passwd -1 123) -G GRP_VEN
passwd roberto -e

useradd josefina -c "Usuario Grupo SEC"  -m -s /bin/bash -m -p $(openssl passwd -1 123) -G GRP_SEC
passwd josefina -e
useradd amanda -c "Usuario Grupo SEC"  -m -s /bin/bash -m -p $(openssl passwd -1 123) -G GRP_SEC
passwd amanda -e
useradd rogerio -c "Usuario Grupo SEC"  -m -s /bin/bash -m -p $(openssl passwd -1 123) -G GRP_SEC
passwd rogerio -e

echo "Especificando permissões dos diretórios."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico


echo "Finalizado!!"
