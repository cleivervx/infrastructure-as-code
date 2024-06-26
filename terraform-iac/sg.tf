resource "aws_security_group" "acesso_web" {
  name        = "acesso_web"
  description = "Acesso Web ao servidor"
  ingress {
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
  }

  egress {
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
  }

  tags = {
    Name = "acesso-web"
  }

}
