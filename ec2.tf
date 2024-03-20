resource "aws_instance" "public-instance" {
  ami = "ami-0a3c3a20c09d6f377"
  instance_type = "t2.micro"
  key_name = "aws-new-key-pair04"
  iam_instance_profile = aws_iam_instance_profile.ec2_profile.name
  subnet_id = aws_subnet.publicsubnet.id
  vpc_security_group_ids = [ aws_security_group.public-sg.id ]

  connection {
    type = "ssh"
    user = "ec2-user"
    host = self.public_ip
    private_key = aws_key_pair.TF-key.key_name
  }

  provisioner "remote-exec" {
    inline = [ 
      "sudo yum update -y",
      "sudo yum install nginx",
      "sudo systemctl start nginx"
     ]
  }

  tags = {
    Name = var.instancename
  }
}





