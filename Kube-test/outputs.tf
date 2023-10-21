
# In ra địa chỉ công khai của máy chủ control plane
output "Control_plane-public_ip" {
  value = aws_instance.control_plane.*.public_ip
}
# In ra địa chỉ riêng tư của máy chủ control plane
output "Control_plane_private_ip" {
  value = aws_instance.control_plane.*.private_ip
}


