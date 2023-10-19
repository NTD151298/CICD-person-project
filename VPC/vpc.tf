#  VPC
resource "aws_vpc" "lap" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "Lap-fianl-Vpc"
  }
}
#  Public subnet
resource "aws_subnet" "public" {
  vpc_id                  = aws_vpc.lap.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true
  tags = {
    Name = "Lap-fianl-Subnet"
  }
}
#  NACL tường lửa cho subnet
resource "aws_network_acl" "allow_all" {
  vpc_id     = aws_vpc.lap.id
  subnet_ids = [aws_subnet.public.id]
  egress {
    rule_no    = 100
    action     = "allow"
    protocol   = "tcp"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 65535
  }
  ingress {
    rule_no    = 100
    action     = "allow"
    protocol   = "tcp"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 65535
  }
}
#  Internet gateway
resource "aws_internet_gateway" "lap" {
  vpc_id = aws_vpc.lap.id
  tags = {
    Name = "Lap-fianl-Gate"
  }
}
#  Route table
resource "aws_route_table" "lap" {
  vpc_id = aws_vpc.lap.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.lap.id
  }
  tags = {
    Name = "Lap-fianl-Route"
  }
}
#  Map route table to subnet
resource "aws_route_table_association" "PubToInt" {
  subnet_id      = aws_subnet.public.id
  route_table_id = aws_route_table.lap.id
}
#  Security Group
resource "aws_security_group" "final" {
  vpc_id      = aws_vpc.lap.id
  name        = "CICD-sg"
  description = "Security group create for final lap"
  ingress {
    description      = "SSH"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  ingress {
    description      = "HTTPS"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  ingress {
    description      = "HTTP"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  tags = {
    Name = "Lap-final-Security-group"
  }
}
