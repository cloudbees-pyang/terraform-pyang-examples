provider "aws" {
  region = "eu-central-1"  # Change to your preferred region
}

resource "aws_instance" "my_vm" {
  ami           = "ami-000b1869774b5bb6a"  
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-VM"
  }
}
