# SSH 
ssh -p 2001 duongtn1512@127.0.0.1 
ssh -p 1000 a123@127.0.0.1 / pass 123
ssh -i key/key5.pem ubuntu@54.169.45.89
ssh -i key/key8.pem ubuntu@52.221.181.80


# Git
git remote -v
git branch main
git count-objects -v
git reset
git rm --cached -r CICD
# Git config
git config --global user.email "sieudenoo1512@gmail.com"
git config --global user.name "NTD151298"
git config --list
# Git remote
git remote set-url origin https://github.com/NTD151298/A-jenkins-full-CICD.git
git remote add origin https://github.com/NTD151298/A-jenkins-full-CICD.git
# Git log
git fetch origin
git pull origin main --allow-unrelated-histories
git add . ; git commit -m "123"
git push origin main
git log --graph

# Aws cli
aws sts get-caller-identity
aws configure list
aws configure 

# Teraform
terraform init
terraform apply --auto-approve
terraform destroy --auto-approve
terraform plan
terraform validate

# Ansible install
sudo apt update 
sudo apt install software-properties-common 
sudo add-apt-repository --yes --update ppa:ansible/ansible 
sudo apt install ansible
ansible --version
sudo ansible-playbook ansible/playbook/install-nginx.yml 
sudo ansible lap -m ping 

ansible-playbook -i your_inventory_file playbook.yaml --start-at-task="Copy file test init.sh to Install controlplane components"

Control-plane-CD
Worker-node-CD

# K8s
sudo kubectl get componentstatuses --kubeconfig=/etc/kubernetes/admin.conf
# check coreDNS
sudo kubectl get pods -n kube-system --kubeconfig=/etc/kubernetes/admin.conf
sudo kubectl get pods -n kube-system -l k8s-app=kube-dns
sudo kubeadm init --apiserver-cert-extra-sans=controlplane --apiserver-advertise-address=$CONTROLPLANE_PRIVATE_IP --pod-network-cidr=192.168.0.0/16

sudo -i
swapoff -a
exit
strace -eopenat kubectl version

# Manh Tuong doc
https://sweetcode.io/how-to-deploy-an-application-to-kubernetes-cluster-using-jenkins-ci-cd-pipeline/?fbclid=IwAR2btd9klHjBUmcCF8ByIZ-xgcthnQ4OZGILW-NtJIvSEtq-rxKs5wLdB0s
https://dijeesh.github.io/posts/Setting-up-single-node-k8s-in-aws/
https://xuanthulab.net/gioi-thieu-va-cai-dat-kubernetes-cluster.html?fbclid=IwAR2-UGkRk4evA_7S2fcXfXcS7aluxMcVbuI6XQjxicVdjw6ZUQeswjPsg38
https://www.youtube.com/watch?v=vBoOXP6BkDI

