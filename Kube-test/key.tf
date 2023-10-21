
# Key pair của Control plane
resource "aws_key_pair" "control_plane" {
  key_name   = "control-plane-key"    # Tên key pair 
  public_key = file("./key/key8.pub") # Đường dẫn đến file public key
}

