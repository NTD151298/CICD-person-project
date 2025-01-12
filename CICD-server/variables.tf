# Ansible user ubuntu
variable "ansible_user" {
  type        = string
  description = "Ansible user used to connect to the instance"
  default     = "ubuntu"
}

# Key
# Jenkins key
variable "jenkins_ssh_private_key_file" {
  type        = string
  sensitive   = false
  description = "ssh key file to use for jenkins server"
  default     = "./key/jenkins-key/key5.pem"
}
variable "jenkins_ssh_public_key_file" {
  type        = string
  sensitive   = false
  description = "ssh public key in jenkins server authorized_keys"
  default     = "./key/jenkins-key/key5.pub"
}
# Control-plane key
variable "control_plane_ssh_private_key_file" {
  type        = string
  sensitive   = false
  description = "ssh key file to use for control_plane server"
  default     = "./key/master-key/key8.pem"
}
variable "control_plane_ssh_public_key_file" {
  type        = string
  sensitive   = false
  description = "ssh public key in control_plane server authorized_keys"
  default     = "./key/master-key/key8.pub"
}
# Worker key
variable "worker_node_ssh_private_key_file" {
  type        = string
  sensitive   = false
  description = "ssh key file to use for worker_node server"
  default     = "./key/worker-key/key1.pem"
}
variable "worker_node_ssh_public_key_file" {
  type        = string
  sensitive   = false
  description = "ssh public key in worker_node server authorized_keys"
  default     = "./key/worker-key/key1.pub"
}
# Monitor key
variable "monitor_ssh_private_key_file" {
  type        = string
  sensitive   = false
  description = "ssh key file to use for monitor server"
  default     = "./key/monitor-key/key9.pem"
}
variable "monitor_ssh_public_key_file" {
  type        = string
  sensitive   = false
  description = "ssh public key in monitor server authorized_keys"
  default     = "./key/monitor-key/key9.pub"
}

# Path for Ansible
# Ansible host path
variable "ansible_host_path" {
  type        = string
  description = "path to ansible inventory host"
  default     = "./ansible/inventory/lap"
}

# Ansible run commands
# Ansible run docker command
variable "ansible_docker_command" {
  default     = "./ansible/playbook/play-books-docker.yml"
  description = "Command for install docker at all host"
}
# Ansible run jenkins command
variable "ansible_jenkins_command" {
  default     = "./ansible/playbook/play-books-jenkins.yml"
  description = "Command for install jenkins server"
}
# Ansible run common command
variable "ansible_common_command" {
  default     = "./ansible/playbook/play-books-common.yml"
  description = "Command for install commons for master and worker node"
}
# Ansible run master command
variable "ansible_master_command" {
  default     = "./ansible/playbook/play-books-master.yml"
  description = "Command for install control plane cluster"
}
# Ansible run monitorning command
variable "ansible_monitor_command" {
  default     = "./ansible/playbook/play-books-monitorning.yml"
  description = "Command for install monitorning server"
}
# Ansible run all command
variable "ansible_all_command" {
  default     = "./ansible/playbook/play-books-all.yml"
  description = "Command for install for all server"
}

# Machine types
# Jenkins EC2 machine type
variable "ec2_jenkins" {
  default     = "t2.micro"
  description = "Jenkins ec2 instance type"
}
# Control plane EC2 machine type
variable "ec2_control_plane" {
  default     = "t2.micro"
  description = "Control plane ec2 instance type"
}
# Worker node EC2 machine type
variable "ec2_worker_node" {
  default     = "t2.micro"
  description = "Worker node ec2 instance type"
}
# Monitor EC2 machine type
variable "ec2_monitor" {
  default     = "t2.micro"
  description = "Monitor server ec2 instance type"
}

# EBS type
# Sc1
variable "chepest_ebs" {
  type = string
  default = "sc1"
  description = "Cold HDD 0.015$ 250IOPS 250 MB/s"
}
# Gp3
variable "basic_test_ebs" {
  type = string
  default = "gp3"
  description = "SSD 0.08$ 3000IOPS 125MB/s"
}

# Ec2 amazone image machine AIM ubuntu
variable "ec2_aim" {
  default     = "ami-0df7a207adb9748c7"
  description = "Amazone image machine of Ubuntu"
}
