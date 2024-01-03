data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "ami-048d7f5ca8e2edd06"
  owners           = ["750773811746"]
}
