# SSH 
ssh -p 2001 duongtn1512@127.0.0.1 
ssh -i key/key5.pem ubuntu@18.142.120.242

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
git add . && git commit -m "123"
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