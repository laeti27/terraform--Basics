resource "aws_instance" "app" {
  ami           = data.aws_ami.ami.id                                                      # argument
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_tls.id]

  tags = {
    Name = "DevOps laeti"
  }
}



data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "ami-06757df8d9f4a3757"
  owners           = ["750773811746"]
}





  
