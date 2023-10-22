#!/bin/bash

CONTROLPLANE_PRIVATE_IP=$(hostname -I | awk '{print $1}')
sudo kubeadm init --apiserver-cert-extra-sans=controlplane --apiserver-advertise-address=$CONTROLPLANE_PRIVATE_IP --pod-network-cidr=192.168.0.0/16

# Copy kubeconfig to default location within controlplane nodes. Change to ROOR user to easily interact with cluste
sudo mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/confi

# Apply Networking Addons for Container Engine to assign Pod I
sudo kubectl apply -f https://raw.githubusercontent.com/projectcalico/calico/v3.26.1/manifests/calico.yaml

# Untaint controlplane node to allow workload deployment. By default, it blocks all pod scheduled on controlplan
sudo kubectl taint nodes --all node-role.kubernetes.io/control-plane-