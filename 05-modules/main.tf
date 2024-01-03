provider "aws" {}

terraform {
    backend "s3" {
        bucket = "b56-terraform-state-bucket"
        key    = "basics/terraform.tfstate"
        region = "us-east-1"
    }
}

module "local-module" {
    source      = "./local"
}