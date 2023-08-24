#!/bin/bash

sudo su -

echo "[TASK 1] Enable ssh password authentication"
sed -i 's/^PasswordAuthentication .*/PasswordAuthentication yes/' /etc/ssh/sshd_config
echo 'PermitRootLogin yes' >> /etc/ssh/sshd_config
systemctl reload sshd


echo "[TASK 2] Set root password"
echo -e "root123\nroot123" | passwd root >/dev/null 2>&1


echo "[TASK 3] Create user"
useradd -p $(openssl passwd -1 lali1234) lalindra
echo 'lalindra        ALL=(ALL)       NOPASSWD: ALL' >> /etc/sudoers


echo "[TASK 4] Install Docker"
dnf config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
dnf install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
systemctl start docker
systemctl enable docker

echo "[TASK 5] Install packages"
dnf install -y git