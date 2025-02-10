provider "aws" {
    region = "us-east-1"  # Set your desired AWS region
}

variable "instance_type" {
    type    = string
    default = "t2.micro"  
}

variable "ami" {
    type = string
}

resource "aws_instance" "example1" {
    ami           = var.ami  # Specify an appropriate AMI ID
    instance_type = var.instance_type
    subnet_id     = "subnet-0387fb7ee4a3fbeb2"
    key_name      = "demo-vpc"

    tags = {
        Name = "bivinaishu"
    }
}
