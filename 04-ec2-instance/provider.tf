provider "aws" {
    region = "us.east-1"
}

resource "aws_instance" "app" {
  ami           = "ami-0f75a13ad2e340a58"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}
