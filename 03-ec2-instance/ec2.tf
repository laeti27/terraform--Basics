resource "aws_instance" "app"{
    ami           = "ami-0f75a13ad2e340a58"
    instance_type = "t2.micro"

    tags = {
        Name = "HelloWord"
    }
}