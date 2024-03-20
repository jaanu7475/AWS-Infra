resource "aws_security_group" "public-sg" {
  name = "Public-SG"
  vpc_id = aws_vpc.my_vpc.id

  dynamic "ingress" {
    for_each = var.sg-ports
    iterator = port
    content {
      from_port = port.value
      to_port = port.value
      protocol = "tcp"
      cidr_blocks = [ "0.0.0.0/0" ]
    }
  }
}


 /*ingress {
    description = "Allow all traffic for public access"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }*/




