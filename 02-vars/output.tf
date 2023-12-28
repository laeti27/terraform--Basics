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

# when enclose a variable in quotes and when to use $ notation for a variable ??
# whenever your variable is enclosed in a set of strings or in between a sentence, then we to enclose then in strings and with bash notation

output "batch_number" {
    value = "Curent Batch is var.batch"
}