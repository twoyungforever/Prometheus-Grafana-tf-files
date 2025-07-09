/*

# Resource: EC2 Instance
resource "aws_instance" "myec2vm" {
  ami = "ami-0742b4e673072066f"
  instance_type = "t3.micro"
  user_data = file("${path.module}/app1-install.sh")
  tags = {
    "Name" = "EC2 Demo"
  }
}

*/

resource "aws_instance" "myec3" {
  ami = "ami-0866a3c8686eaeeba"
  instance_type = var.ec2_instance_type 
  user_data = file("${path.module}/monitoring.sh")
  key_name = var.ec2_keypair
  root_block_device {
    volume_size = 20
    volume_type = "gp2"
  }
  tags = {
    "Name" = "Sonar" 
  }
}

