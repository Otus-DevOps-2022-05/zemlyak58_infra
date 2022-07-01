#!/bin/bash

# Переменные для VM
NAME=reddit-full
HOSTNAME=reddit-app
# MEMORY=4
# IMAGECATALOG=standard-images
# fd83huf6otg71dpr3ce6
IMAGEID=`yc compute image list | grep reddit-full | awk '{print $2}'`
ISO=reddit-full
SIZE=10GB
ZONE=ru-central1-a
NAT=ipv4
SSHKEY=~/.ssh/appuser.pub

echo "yc compute instance create --name $NAME --zone $ZONE --create-boot-disk name=disk1,image-id=$IMAGEID --public-ip --ssh-key $SSHKEY"
# Запуск вм из создана образа пакером
yc compute instance create --name $NAME --zone $ZONE --create-boot-disk name=disk1,image-id=$IMAGEID --public-ip --ssh-key $SSHKEY &&

# yc compute instance list

ADDRES=`yc compute instance list | grep $NAME | awk '{print $10}'`
echo "yc compute instance list | grep $NAME | awk '$ADDRES'"
xdg-open http://"$ADDRES":9292
