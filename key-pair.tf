resource "aws_key_pair" "TF-key" {
  key_name = "aws-new-key-pair01"
  public_key = tls_private_key.rsa.public_key_openssh
}

resource "tls_private_key" "rsa" {
  algorithm = "RSA"
  rsa_bits = 4096
}

