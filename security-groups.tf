resource "aws_security_group" "public-sg" {
  name = "Public-SG"
  vpc_id = aws_vpc.my_vpc.id

  ingress {
    description = "Allow all traffic for public access"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

