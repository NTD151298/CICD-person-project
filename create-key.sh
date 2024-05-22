#!/bin/bash

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

# Thiết lập quyền cho các tệp khóa
sudo chmod 600 CICD-server/key/worker-key/key1
sudo chmod 600 CICD-server/key/jenkins-key/key5
sudo chmod 600 CICD-server/key/master-key/key8
sudo chmod 600 CICD-server/key/monitor-key/key9
sudo chmod 600 Kubeadm/key/worker-key/key1
sudo chmod 600 Kubeadm/key/master-key/key8
