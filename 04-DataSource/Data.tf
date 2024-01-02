data "aws_ami" "amii" {
  most_recent      = true
  name_regex       = "DevOps-LabImage-CentOS7"
  owners           = ["750773811746"]
}

  