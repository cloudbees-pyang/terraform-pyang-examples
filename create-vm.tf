provider "aws" {
  region = "eu-central-1"  # Change to your preferred region
}

resource "aws_instance" "my_vm" {
  ami           = "ami-004686234852ad556"  
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-VM"
  }
}
