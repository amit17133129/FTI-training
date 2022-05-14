resource "aws_instance" "web" {
  ami           = var.ami_name
  instance_type = var.instance_type_name

  tags = {
    Name = var.os_name
  }
}