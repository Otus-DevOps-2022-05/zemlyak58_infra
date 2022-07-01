#!/bin/bash

# Переменные для создания VM
NAME=reddit-base
HOSTNAME=reddit-app
# MEMORY=4
# IMAGECATALOG=standard-images
# fd83huf6otg71dpr3ce6

ISO=reddit-base
SIZE=10GB
ZONE=default-ru-central1-a
NAT=ipv4
SSHKEY=~/.ssh/appuser.pub

echo "yc compute instance create --name $NAME --hostname $HOSTNAME --create-boot-disk,image-family="$ISO",size=$SIZE --network-interface subnet-name="$ZONE",nat-ip-version=$NAT --metadata serial-port-enable=1 --ssh-key $SSHKEY"

 Создание ВМ с помощью YC
 `yc compute instance create --name $NAME --hostname $HOSTNAME --memory=$MEMORY --create-boot-disk image-folder-id="$IMAGECATALOG",image-family="$ISO",size=$SIZE --network-interface subnet-name="$ZONE",nat-ip-version=$NAT --metadata serial-port-enable=1 --ssh-key $SSHKEY`


# sleep 30
# Получаем ip адресс созданной машины
ADDRES=`yc compute instance list | grep $NAME | awk '{print $10}'`
echo "yc compute instance list | grep $NAME | awk '$ADDRES'"

# избавиться от Are you sure you want to continue connecting (yes/no)
# sudo echo "StrictHostKeyChecking no" >> /etc/ssh/ssh_config

# Копируем файлы на удалённую машину
# scp -i $SSHKEY *.sh -A yc-user@"$ADDRES":~/
#
# # Делаем файлы исполняемые
# ssh -i ~/.ssh/appuser yc-user@"$ADDRES" chmod +x ./*.sh
#
# # Запуск скрипта для установки Ruby
# ssh -i ~/.ssh/appuser yc-user@"$ADDRES" ./install_ruby.sh
#
# # Проверка установленного ПО
# ssh -i ~/.ssh/appuser yc-user@"$ADDRES" ruby -v bundler -v
#
# # Установка mongodb
# ssh -i ~/.ssh/appuser yc-user@"$ADDRES" ./install_mongodb.sh
#
# # Установка monolith
# ssh -i ~/.ssh/appuser yc-user@"$ADDRES" ./deploy.sh
# # scp *.sh ~/#.
#
# xdg-open http://"$ADDRES":9292
