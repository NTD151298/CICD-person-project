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

##  VPC
#resource "aws_vpc" "lap" {
#  cidr_block = "10.0.0.0/16"
#  tags = {
#    Name = "Control-panle-test"
#  }
#}
##  Public subnet
#resource "aws_subnet" "public" {
#  vpc_id                  = aws_vpc.lap.id
#  cidr_block              = "10.0.1.0/24"
#  map_public_ip_on_launch = true
#  tags = {
#    Name = "Control-panle-test"
#  }
#}
##  NACL tường lửa cho subnet
#resource "aws_network_acl" "allow_all" {
#  vpc_id     = aws_vpc.lap.id
#  subnet_ids = [aws_subnet.public.id]
#  egress {
#    rule_no    = 100
#    action     = "allow"
#    protocol   = "tcp"
#    cidr_block = "0.0.0.0/0"
#    from_port  = 0
#    to_port    = 65535
#  }
#  ingress {
#    rule_no    = 100
#    action     = "allow"
#    protocol   = "tcp"
#    cidr_block = "0.0.0.0/0"
#    from_port  = 0
#    to_port    = 65535
#  }
#}
##  Internet gateway
#resource "aws_internet_gateway" "lap" {
#  vpc_id = aws_vpc.lap.id
#  tags = {
#    Name = "Control-panle-test"
#  }
#}
##  Route table
#resource "aws_route_table" "lap" {
#  vpc_id = aws_vpc.lap.id
#  route {
#    cidr_block = "0.0.0.0/0"
#    gateway_id = aws_internet_gateway.lap.id
#  }
#  tags = {
#    Name = "Control-panle-test"
#  }
#}
##  Map route table to subnet
#resource "aws_route_table_association" "PubToInt" {
#  subnet_id      = aws_subnet.public.id
#  route_table_id = aws_route_table.lap.id
#}
##  Security Group
#resource "aws_security_group" "final" {
#  vpc_id      = aws_vpc.lap.id
#  name        = "CICD-sg"
#  description = "Security group create for k8s test"
#  ingress {
#    description      = "SSH"
#    from_port        = 22
#    to_port          = 22
#    protocol         = "tcp"
#    cidr_blocks      = ["0.0.0.0/0"]
#    ipv6_cidr_blocks = ["::/0"]
#  }
#  ingress {
#    description      = "HTTPS"
#    from_port        = 443
#    to_port          = 443
#    protocol         = "tcp"
#    cidr_blocks      = ["0.0.0.0/0"]
#    ipv6_cidr_blocks = ["::/0"]
#  }
#  ingress {
#    description      = "HTTP"
#    from_port        = 80
#    to_port          = 80
#    protocol         = "tcp"
#    cidr_blocks      = ["0.0.0.0/0"]
#    ipv6_cidr_blocks = ["::/0"]
#  }
#  # Inbound rule for Kubernetes API Server
#  ingress{
#    description = "kube-api-server"
#    from_port   = 6443
#    to_port     = 6443
#    protocol    = "tcp"
#    cidr_blocks = ["0.0.0.0/0"]
#    ipv6_cidr_blocks = ["::/0"]
#  }
#    egress {
#    from_port        = 0
#    to_port          = 0
#    protocol         = "-1"
#    cidr_blocks      = ["0.0.0.0/0"]
#    ipv6_cidr_blocks = ["::/0"]
#  }
#  tags = {
#    Name = "Control-panle-test"
#  }
#}
#
