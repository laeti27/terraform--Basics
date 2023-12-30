output "instance_dns" {
    value = aws_instance.app.private_dns                                                     # attribut
}



output "instance_arn" {
    value = aws_instance.app.arn                                                                 # attribut
}