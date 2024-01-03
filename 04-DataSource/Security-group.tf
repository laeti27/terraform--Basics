resource "aws_security_group" "b56_allow_tls" {
  name        = "b56_allow_tls"
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
    Name = "b56_allow_tls"
  }
}