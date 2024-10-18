#!/bin/bash

sudo fdisk /dev/sdc << EOF

n
p
1

+2G
n
p
2

+2G
n
p
3

+2G
n
e
4

+2G
w
EOF

sudo mkfs.ext3 /dev/sdc1
sudo mkfs.ext3 /dev/sdc2
sudo mkfs.ext3 /dev/sdc3

sudo mkdir -p /mnt/particion_1
sudo mkdir -p /mnt/particion_2
sudo mkdir -p /mnt/particion_3

sudo mount /dev/sdc1 /mnt/particion_1
sudo mount /dev/sdc2 /mnt/particion_2
sudo mount /dev/sdc3 /mnt/particion_3

echo "Mis particiones"
sudo fdisk -l
