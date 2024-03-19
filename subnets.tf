resource "aws_subnet" "publicsubnet" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = "10.0.0.0/24"

  tags = {
    Name = "Public_SN"
  }
}

