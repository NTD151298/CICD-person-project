#!/bin/bash

# bash /home/duongnt01/Personal-project-Devops/CICD-person-project/create-key.sh
# Tạo các thư mục
sudo mkdir -p CICD-server/key/worker-key
sudo mkdir -p CICD-server/key/jenkins-key
sudo mkdir -p CICD-server/key/master-key
sudo mkdir -p CICD-server/key/monitor-key
sudo mkdir -p Kubeadm/key/worker-key
sudo mkdir -p Kubeadm/key/master-key

# Tạo các tệp khóa
sudo ssh-keygen -t rsa -b 2048 -f CICD-server/key/worker-key/key1 -N ""
sudo ssh-keygen -t rsa -b 2048 -f CICD-server/key/jenkins-key/key5 -N ""
sudo ssh-keygen -t rsa -b 2048 -f CICD-server/key/master-key/key8 -N ""
sudo ssh-keygen -t rsa -b 2048 -f CICD-server/key/monitor-key/key9 -N ""
sudo ssh-keygen -t rsa -b 2048 -f Kubeadm/key/worker-key/key1 -N ""
sudo ssh-keygen -t rsa -b 2048 -f Kubeadm/key/master-key/key8 -N ""

# Đổi tên cho cái tệp key
sudo mv CICD-server/key/worker-key/key1 CICD-server/key/worker-key/key1.pem
sudo mv CICD-server/key/jenkins-key/key5 CICD-server/key/jenkins-key/key5.pem
sudo mv CICD-server/key/master-key/key8 CICD-server/key/master-key/key8.pem
sudo mv CICD-server/key/monitor-key/key9 CICD-server/key/monitor-key/key9.pem
sudo mv Kubeadm/key/worker-key/key1 Kubeadm/key/worker-key/key1.pem
sudo mv Kubeadm/key/master-key/key8 Kubeadm/key/master-key/key8.pem

# Thiết lập quyền cho các tệp khóa
sudo chmod 400 CICD-server/key/worker-key/key1.pem
sudo chmod 400 CICD-server/key/jenkins-key/key5.pem
sudo chmod 400 CICD-server/key/master-key/key8.pem
sudo chmod 400 CICD-server/key/monitor-key/key9.pem
sudo chmod 400 Kubeadm/key/worker-key/key1.pem
sudo chmod 400 Kubeadm/key/master-key/key8.pem

# Đổi chủ sở hữu cho người dùng chính Dương
sudo chown duongnt01:duongnt01 CICD-server/key/worker-key/key1.pem
sudo chown duongnt01:duongnt01 CICD-server/key/jenkins-key/key5.pem
sudo chown duongnt01:duongnt01 CICD-server/key/master-key/key8.pem
sudo chown duongnt01:duongnt01 CICD-server/key/monitor-key/key9.pem
sudo chown duongnt01:duongnt01 Kubeadm/key/worker-key/key1.pem
sudo chown duongnt01:duongnt01 Kubeadm/key/master-key/key8.pem