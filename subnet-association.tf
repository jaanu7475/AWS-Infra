resource "aws_route_table_association" "my_SA" {
  subnet_id      = aws_subnet.publicsubnet.id
  route_table_id = aws_route_table.publicrt.id
}

