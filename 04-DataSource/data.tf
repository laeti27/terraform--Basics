data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "ansibleb56"
  owners           = ["750773811746"]
}
