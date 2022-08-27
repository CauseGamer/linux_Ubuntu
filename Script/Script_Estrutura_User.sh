#!/bin/bash

echo "Criando Pastas..."

mkdir publico
mkdir adm
mkdir ven
mkdir sec

echo "Pastas Criadas"

echo "Criando Grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grupos Criados"

echo "Criando Usuarios..."

useradd carlos -c "Carlos ADM" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_ADM
passwd carlos -e

useradd maria -c "Maria ADM" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_ADM
passwd maria -e

useradd joao -c "João ADM" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_ADM
passwd joao -e

useradd debora -c "Debora VEN" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_VEN
passwd debora -e

useradd sebastiana -c "Sebastiana VEN" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_VEN
passwd sebastiana -e

useradd roberto -c "Roberto VEN" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_VEN
passwd roberto -e

useradd josefina -c "Josefina SEC" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_SEC
passwd josefina -e

useradd amanda -c "Amanda SEC" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_SEC
passwd amanda -e

useradd rogerio -c "Rogerio SEC" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_SEC
passwd rogerio -e

echo "Usuarios Criados"

echo "Criando Permissões..."

chown root:GRP_ADM adm
chown root:GRP_VEN ven
chown root:GRP_SEC sec

chmod 777 publico
chmod 770 adm
chmod 770 ven
chmod 770 sec

echo "Permissões Criadas"
echo "FInalizado!"
