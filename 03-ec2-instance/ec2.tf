resource "aws_instance" "app" {
  ami           = "ami-0f75a13ad2e340a58"                                                       # argument
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_tls.id]

  tags = {
    Name = "DevOps laeti"
  }
}

output "instance_dns" {
    value = aws_instance.app.private_dns                                                     # attribut
}



output "instance_arn" {
    value = aws_instance.app.arn                                                                 # attribut
}

resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"
  

  ingress {
    description      = "SSH from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

  tags = {
    Name = "allow_tls"
  }
}
