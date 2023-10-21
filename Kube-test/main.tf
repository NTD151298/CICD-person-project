# Khai báo cấu hình AWS provider
provider "aws" {
  region = "ap-southeast-1"
}
# Tạo máy chủ EC2-control-plane
resource "aws_instance" "control_plane" {
  ami           = var.ec2_aim                         # AMI ID của Ubuntu
  instance_type = var.ec2_control_plane               # Instance type của tôi
  key_name      = aws_key_pair.control_plane.key_name # Key pair của tôi
  tags = {
    Name = "Control-plane-test"
  }
}
