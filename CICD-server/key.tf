# Key pair của Jenkins
resource "aws_key_pair" "jenkins" {
  key_name   = "jenkins-key"                      # Tên key pair 
  public_key = file("./key/jenkins-key/key5.pub") # Đường dẫn đến file public key
}
# Key pair của Control plane
resource "aws_key_pair" "control_plane" {
  key_name   = "control-plane-key"               # Tên key pair 
  public_key = file("./key/master-key/key8.pub") # Đường dẫn đến file public key
}
# Key pair của Worker node
resource "aws_key_pair" "worker_node" {
  key_name   = "worker-node-key"                 # Tên key pair 
  public_key = file("./key/worker-key/key1.pub") # Đường dẫn đến file public key
}
# Key pair của Monitor
resource "aws_key_pair" "monitor" {
  key_name   = "worker-node-key"                  # Tên key pair 
  public_key = file("./key/monitor-key/key9.pub") # Đường dẫn đến file public key
}
