terraform {
    required_version = "1.2.3"
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "4.16"
        }
    }
}

provider "aws" {
    region = "us-east-2"
    profile = "default"
}

resource "aws_instance" "demo" {
  ami           = "ami-0f822d3c9e0532335"
  instance_type = "t2.micro"
}