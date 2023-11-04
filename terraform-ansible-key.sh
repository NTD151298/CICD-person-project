#!/bin/bash

sudo apt-get update

# Key permision
sudo chmod 600 CICD-server/key/worker-key/key1.pem
sudo chmod 600 CICD-server/key/jenkins-key/key5.pem
sudo chmod 600 CICD-server/key/master-key/key8.pem
sudo chmod 600 CICD-server/key/monitor-key/key9.pem
sudo chmod 600 Kubeadm/key/key1.pem
sudo chmod 600 Kubeadm/key/key8.pem

# Terraform install
sudo apt update 
# update the System
sudo apt -y upgrade 
sudo apt -y install curl software-properties-common 
# add the HashiCorp GPG (GNU Privacy Guard) key
wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg 
# add the HashiCorp repository to your system
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list 
# install terraform
sudo apt update && sudo apt install terraform 

# Ansible install
sudo apt update 
sudo apt -y install software-properties-common 
sudo add-apt-repository --yes --update ppa:ansible/ansible 
sudo apt -y install ansible

# Validate install
echo "terraform verison"
terraform version 
echo "ansible --version"
ansible --version





