resource "aws_subnet" "public_subnet" {
  vpc_id     = aws_vpc.main.id                 # resource_name.object_name.id
  cidr_block = "10.0.1.0/24"
  map_public_ip_on_launch = true
  
  tags = {
    Name = "public-subnet"
  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id     = aws_vpc.main.id             # resource_name.object_name.id
  cidr_block = "10.0.2.0/24"
  map_public_ip_on_launch = false
  tags = {
    Name = "private-subnet"
  }
}