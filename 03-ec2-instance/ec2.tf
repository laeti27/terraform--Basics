resource "aws_instance" "app" {
  ami           = "ami-0f75a13ad2e340a58"                                                       # argument
  instance_type = "t3.micro"

  tags = {
    Name = "DevOps laeti"
  }
}

output "instance_dns" {
    value = aws_instances.app.arn.private_dns                                                     # attribut
}



output "instance_arn" {
    value = aws_instances.app.arn                                                                 # attribut
}
