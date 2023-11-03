
# In ra địa chỉ riêng tư của máy chủ control plane
output "Control_plane_private_ip" {
  value = aws_instance.control_plane.*.private_ip
}
# In ra địa chỉ công khai của máy chủ control plane
output "Control_plane-public_ip" {
  value = aws_instance.control_plane.*.public_ip
}
# In ra địa chỉ công khai của máy chủ worker node
output "Worker_node-public_ip" {
  value = aws_instance.worker_node.*.public_ip
}
# In ra địa chỉ riêng tư của máy chủ worker node
output "Worker_node_private_ip" {
  value = aws_instance.worker_node.*.private_ip
}

