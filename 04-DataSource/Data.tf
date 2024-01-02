data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "DevOps-LabImage-CentOS7"
  owners           = ["750773811746"]
}
