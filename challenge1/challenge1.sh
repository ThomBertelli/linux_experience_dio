#!/bin/bash

echo "Creating directories..."
mkdir -v publico adm ven sec
echo  "Done!"

echo "Creating groups..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
echo "Done!"

echo "Changing permissions... "
chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
echo "Done!"

echo "Creating new users..."
useradd carlos -m -G ADM -s /bin/bash -p $(openssl passwd pwd123)
passwd carlos -e

useradd maria -m -G GRP_ADM -s /bin/bash -p $(openssl passwd pwd123)
passwd maria -e

useradd joao_ -m -G GRP_ADM -s /bin/bash -p $(openssl passwd pwd123)
passwd joao_ -e


useradd debora -m -G GRP_VEN -s /bin/bash -p $(openssl passwd pwd123)
passwd debora -e

useradd sebastiana -m -G GRP_VEN -s /bin/bash -p $(openssl passwd pwd123)
passwd sebastiana -e

useradd roberto -m -G GRP_VEN -s /bin/bash -p $(openssl passwd pwd123)
passwd roberto -e


useradd josefina -m -G GRP_SEC -s /bin/bash -p $(openssl passwd pwd123)
passwd josefina -e

useradd amanda -m -G GRP_SEC -s /bin/bash -p $(openssl passwd pwd123)
passwd amanda -e

useradd rogerio -m -G GRP_SEC -s /bin/bash -p $(openssl passwd pwd123)
passwd rogerio -e

echo "Done!"

echo "Changing group access to directories..."
chown :GRP_ADM adm
chown :GRP_SEC sec
chown :GRP_VEN ven
echo "Done! "
