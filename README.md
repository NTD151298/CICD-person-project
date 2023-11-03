# CICD-person-project
A small personal project to containerization application and deploy it to k8s server on ec2 aws instance 
using jenkins pipeline

# Deploy 3 ec2 instance using terraform
- jenkins
- control plane
- worker node

# Terraform then trigger ansible to config those 3 instance
- install docker engine for 3 server
- install kubelet, kubectl, kubeadm for master and worker node
- kubeadm init creating cluster from control-plane server  
