resource "aws_instance" "app" {
  ami           = "ami-0f75a13ad2e340a58"                                  # argument
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_lts.id] 

  tags = {
    Name        = "DevOps-With-AWS-LabInstance"
  }
}

output "instance_dns" {
  value         = aws_instance.app.private_dns                                   # attributes
}


output "instance_arn" {
    value      =aws_instance.app.arn                                            # attributes
}