#Declaring an empty variables
variable "sample" {}

# Declaring a variable with a default value
variable "bacth" {
    default = "batch56"
}

# Printing a variable with output
output "batch-op" {
    value = var.bacth
}