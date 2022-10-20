resource "aws_instance" "instance" {
  ami              = data.aws_ami.ubuntu.image_id
  instance_type    = "t2.micro"
  associate_public_ip_address = true
  count            = 3
  subnet_id        = aws_subnet.public_subnet[0].id
  key_name         = aws_key_pair.ssh_key.key_name
  security_groups  = [aws_security_group.allow_ssh.id]
  depends_on = [aws_internet_gateway.gw]
}

