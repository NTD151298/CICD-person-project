# Ansible user ubuntu
variable "ansible_user" {
  type        = string
  description = "Ansible user used to connect to the instance"
  default     = "ubuntu"
}
# Jenkins key
variable "jenkins_ssh_private_key_file" {
  type        = string
  sensitive   = true
  description = "ssh key file to use for jenkins server"
  default     = "./key/key5.pem"
}
variable "jenkins_ssh_public_key_file" {
  type        = string
  sensitive   = true
  description = "ssh public key in jenkins server authorized_keys"
  default     = "./key/key5.pub"
}
# Control-plane key
variable "control_plane_ssh_private_key_file" {
  type        = string
  sensitive   = true
  description = "ssh key file to use for control_plane server"
  default     = "./key/key8.pem"
}
variable "control_plane_ssh_public_key_file" {
  type        = string
  sensitive   = true
  description = "ssh public key in control_plane server authorized_keys"
  default     = "./key/key8.pub"
}
# Worker-plane key
variable "worker_node_ssh_private_key_file" {
  type        = string
  sensitive   = true
  description = "ssh key file to use for worker_node server"
  default     = "./key/key1.pem"
}
variable "worker_node_ssh_public_key_file" {
  type        = string
  sensitive   = true
  description = "ssh public key in worker_node server authorized_keys"
  default     = "./key/key1.pub"
}
# Ansible host path
variable "ansible_host_path" {
  type        = string
  description = "path to ansible inventory host"
  default     = "./ansible/inventory/lap"
}
# Ansible command
variable "ansible_command" {
  default     = "./ansible/playbook/play-books.yml"
  description = "Command for container lab hosts"
}
# Jenkins EC2 machine type
variable "ec2_jenkins" {
  default     = "t2.micro"
  description = "Jenkins ec2 instance type"
}
# Control plane EC2 machine type
variable "ec2_control_plane" {
  default     = "t2.large"
  description = "Control plane ec2 instance type"
}
# Worker node EC2 machine type
variable "ec2_worker_node" {
  default     = "t2.medium"
  description = "Worker node ec2 instance type"
}
# Ec2 amazone image machine AIM ubuntu
variable "ec2_aim" {
  default     = "ami-0df7a207adb9748c7"
  description = "Amazone image machine of Ubuntu"
}
