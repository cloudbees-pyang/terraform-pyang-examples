terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.39"
    }
  }
}


provider "aws" {
  region = "eu-central-1"  # Change to your preferred region
}

resource "aws_instance" "new_vm" {
  ami           = "ami-000b1869774b5bb6a"  
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-VM"
  }
}
