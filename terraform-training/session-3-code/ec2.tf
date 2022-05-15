resource "aws_instance" "public_instance" {
  ami           = "ami-0022f774911c1d690"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.public_subnet.id
  security_groups = [aws_security_group.public_os_sg.id]
  tags = {
    Name = "public instance"
  }
}


resource "aws_instance" "private_instance" {
  ami           = "ami-0022f774911c1d690"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.private_subnet.id
  security_groups = [aws_security_group.private_sg_os.id]
  tags = {
    Name = "private instance"
  }
}
