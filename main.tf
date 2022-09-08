terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
 region = "ap-south-1"
 profile = "default"
  shared_credentials_file = "/home/ec2-user/.aws/credentials"
}

resource "aws_instance" "app_server" {
  ami           = "ami-06489866022e12a14"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}
