#Provider to Download
terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 3.27"
        }
    }
    required_version = ">= 1.0.5"
}

#Provider of the Terraform
provider "aws" {
    profile = "default"
    region = "us-east-2"

    default_tags {
        tags = {
            name = "andy-ec2"
        } 
    }
}