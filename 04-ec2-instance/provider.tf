provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "app" {
  ami           = "ami-0f75a13ad2e340a58"       # argument
  instance_type = "t3.micro"

  tags = {
    Name = "DevOps-With-AWS-LabInstance"
  }
}

output "instance_dns" {
  value = aws_instance.app.private_dns                                   # attributes
}


output "instance_arn" {
  value = aws_instance.app.arn
}

resourse "aws_security_group" "allow-tls" {
  name         = "b56_allow_tls"
  description  = "B56_Allow TLS inbound traffic"

  ingerss {
    description     = "SSH from VPC"
    from_port       = 22
    to_port         = 22
    protocol        = "tcp"
    cidr_blocks     = ["0.0.0.0/0"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }

  tags ={
    Name = "allow_tls"
  }
}
   

                  
