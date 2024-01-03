resource "aws_instance" "web" {
  ami           = data.aws_ami.ami.id                                                      # argument
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.b56_allow_tls.id]

  tags = {
    Name = "DevOps laeti"
  }
}



data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "ansibleb56"
  owners           = ["750773811746"]
}





  
