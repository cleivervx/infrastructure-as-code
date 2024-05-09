resource "aws_instance" "web-server" {
  ami           = "ami-03d5c68bab01f3496"
  instance_type = var.instancia
  key_name      = var.chave
  tags = {
    Name = "web-server"
  }
}

resource "aws_key_pair" "key-SSH" {
  key_name = var.chave
  public_key = file("${var.chave}.pub")
  
}
