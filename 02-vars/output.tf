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

variable "numerival" {
    default = 100
}

output "numerical_op" {
    value = var.numerival
}

# Declaring a list variable !!! : A key with multiple values is refferred as list.

variable "example_list" {
    default = [
        "DevOps",
        "AWS_Cloud",
        false,
        "Laetitia",
        56
    ]
}  

# Printing a list Variable
output "example_list_op" {
    value ="Welcome To ${var.example_list[0]} with ${var.example_list[1]} Training and this is our batch ${var.example_list[4]} and training ${var.example_list[3]}"
}

# Declaring a Map  Variable
variable "traning_map" {
    default = {
        batch       = "b56"
        mode        = "Online"
        training    ="DevOpsWithAWS"
    }
}

# Printing a Map Variable
output "traning_map_op" {
    value = "${var.traning_map["training"]} has great scope of opportunities and this complete ${var.traning_map["mode"]} and this is our batch ${var.traning_map["batch"]}"
}

### In reality, we write the code very generic and values would be from the external file based on the environment. 
### we can declare variable in a variable file and that would be picked up by TF and the variables file should always ending with *tfvars.check "

### terraform.tfvars is the default file that would be picked. 

variable "city" {

    output "city_name" {
        value =var.city 
    }
}

