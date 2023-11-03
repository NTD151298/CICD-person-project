# Khai báo cấu hình AWS provider
provider "aws" {
  region = "ap-southeast-1"
}
# Tạo máy chủ EC2-control-plane
resource "aws_instance" "control_plane" {
  ami           = var.ec2_aim                         # AMI ID của Ubuntu
  instance_type = var.ec2_control_plane               # Instance type của tôi
  key_name      = aws_key_pair.control_plane.key_name # Key pair của tôi
  #  subnet_id              = aws_subnet.public.id                # Sub net của tôi
  #  vpc_security_group_ids = [aws_security_group.final.id]
  tags = {
    Name = "Control-plane-test"
  }
}
# Tạo máy chủ EC2-worker-node
resource "aws_instance" "worker_node" {
  ami           = var.ec2_aim                       # AMI ID của Ubuntu
  instance_type = var.ec2_worker_node               # Instance type của tôi
  key_name      = aws_key_pair.worker_node.key_name # Key pair của tôi
  tags = {
    Name = "Worker-node-CD"
  }
}

# Nếu có thêm vpc subnet sg và iam thì thêm 3 dòng này vào máy chủ EC2
# iam_instance_profile   = aws_iam_instance_profile.last.name
# subnet_id              = aws_subnet.public.id # Sub net của tôi
# vpc_security_group_ids = [aws_security_group.final.id]
