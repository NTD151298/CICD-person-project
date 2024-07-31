# CICD-person-project
"A small personal project to create infrastructure as code using Terraform and configuration as code using Ansible to provision AWS cloud resource."

# Deploy 4 ec2 instance using terraform
- jenkins
- control plane
- worker node
- monitor

# Terraform then trigger ansible to config those 4 instance
- install docker engine for 4 server
- run jenkins container that using docker daemon from docker host 
- install kubelet, kubectl, kubeadm for master and worker node, config networking
- kubeadm init creating master node on control-plane server 
- run monitoring server with gafana and prometheus

# To visualize project work flow  
- CICD-server
![alt text](https://raw.githubusercontent.com/NTD151298/CICD-person-project/main/Visualizer/CICD-server.png)
- Jenkins-server
![alt text](https://raw.githubusercontent.com/NTD151298/CICD-person-project/main/Visualizer/Jenkins.png)
- KubeADM-server
![alt text](https://raw.githubusercontent.com/NTD151298/CICD-person-project/main/Visualizer/KubeADM.png)