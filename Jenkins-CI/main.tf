# Khai báo cấu hình AWS provider
provider "aws" {
  region = "ap-southeast-1"
}

# Tạo máy chủ EC2
resource "aws_instance" "main" {
  ami           = "ami-0df7a207adb9748c7"    # AMI ID của Ubuntu
  instance_type = "t2.micro"                 # Instance type của tôi
  key_name      = aws_key_pair.fast.key_name # Key pair của tôi
  # iam_instance_profile   = aws_iam_instance_profile.last.name
  # subnet_id              = aws_subnet.public.id # Sub net của tôi
  # vpc_security_group_ids = [aws_security_group.final.id]
  tags = {
    Name = "Jenkins-CI"
  }
}

# Để tạo key pair, ta sử dụng resource aws_key_pair trong tệp Terraform.
resource "aws_key_pair" "fast" {
  key_name   = "key5.pub"             # Tên key pair 
  public_key = file("./key/key5.pub") # Đường dẫn đến file public key
}
