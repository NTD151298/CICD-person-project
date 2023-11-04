# CICD-person-project
A small personal project to containerization application and deploy it to k8s server on ec2 aws instance 
using jenkins pipeline

# Deploy 4 ec2 instance using terraform
- jenkins
- control plane
- worker node
- monitor

# Terraform then trigger ansible to config those 4 instance
- install docker engine for 3 server
- run jenkins container that using docker daemon from docker host for docker command
- install kubelet, kubectl, kubeadm for master and worker node, config networking
- kubeadm init creating master node on control-plane server 
- run monitoring server with gafana and prometheus
