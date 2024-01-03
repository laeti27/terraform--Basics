data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "ami-0b98a32b1c5e0d105"
  owners           = ["750773811746"]
}
