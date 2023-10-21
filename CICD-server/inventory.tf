# Ghi lại ip của ec2 mới tạo vào file inventory/lab của ansible
resource "local_file" "ansible_inventory" {
  filename = var.ansible_host_path
  content  = <<-EOT
    [jenkins]
    %{for ip in aws_instance.jenkins.*.public_ip~} 
    ${ip} ansible_host=${ip} ansible_user=${var.ansible_user} ansible_ssh_private_key_file=${var.jenkins_ssh_private_key_file} ansible_ssh_common_args='-o StrictHostKeyChecking=no' ansible_ssh_connection=ssh 
    %{endfor~} 

    [control_plane]
    %{for ip in aws_instance.control_plane.*.public_ip~} 
    ${ip} ansible_host=${ip} ansible_user=${var.ansible_user} ansible_ssh_private_key_file=${var.control_plane_ssh_private_key_file} ansible_ssh_common_args='-o StrictHostKeyChecking=no' ansible_ssh_connection=ssh 
    %{endfor~}
    
    [worker_node]
    %{for ip in aws_instance.worker_node.*.public_ip~} 
    ${ip} ansible_host=${ip} ansible_user=${var.ansible_user} ansible_ssh_private_key_file=${var.worker_node_ssh_private_key_file} ansible_ssh_common_args='-o StrictHostKeyChecking=no' ansible_ssh_connection=ssh 
    %{endfor~}

  EOT
}
# Kích hoạt cho ansible chạy playbook với host ip mới lấy được
resource "null_resource" "playbook_exec" {
  triggers = {
    key = uuid()
  }
  provisioner "local-exec" {
    command = <<EOF
      ansible-playbook ${var.ansible_command} -i ${var.ansible_host_path}
      EOF
  }
  depends_on = [aws_instance.jenkins, aws_instance.control_plane, aws_instance.worker_node, local_file.ansible_inventory]
}

