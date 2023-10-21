# Key pair của Jenkins
resource "aws_key_pair" "jenkins" {
  key_name   = "jenkins-key"          # Tên key pair 
  public_key = file("./key/key5.pub") # Đường dẫn đến file public key
}
# Key pair của Control plane
resource "aws_key_pair" "control_plane" {
  key_name   = "control-plane-key"    # Tên key pair 
  public_key = file("./key/key8.pub") # Đường dẫn đến file public key
}
# Key pair của Worker node
resource "aws_key_pair" "worker_node" {
  key_name   = "worker-node-key"      # Tên key pair 
  public_key = file("./key/key1.pub") # Đường dẫn đến file public key
}
