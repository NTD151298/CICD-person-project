# Key permision
sudo chmod 006 Jenkins-CI/key/key5.pem
sudo chmod 006 Control-plane-CD/key/key5.pem
sudo chmod 006 Worker-node-CD/key/key5.pem

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
terraform version 
ansible --version





