provider "aws" {
    alias = "us-east-1"
    region = "us-east-1"  # Set your desired AWS region
}

provider "aws" {
    alias = "us-west-1"
    region = "us-west-1"  # Set your desired AWS region
}

resource "aws_instance" "example1" {
    ami           = "ami-04b4f1a9cf54c11d0"  # Specify an appropriate AMI ID
    instance_type = "t2.micro"
    subnet_id = "subnet-0387fb7ee4a3fbeb2"
    key_name = "demo-vpc"
    provider= aws.us-east-1

tags = {
        Name = "bivinaishu"
    }
}

resource "aws_instance" "example2" {
    ami           = "ami-04b4f1a9cf54c11d0"  # Specify an appropriate AMI ID
    instance_type = "t2.micro"
    subnet_id = "subnet-0387fb7ee4a3fbeb2"
    key_name = "demo-vpc"
    provider= aws.us-west-1

tags = {
        Name = "bivinaishu"
    }
}
