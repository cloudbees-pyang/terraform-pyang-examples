provider "aws" {
  region = "eu-central-1"  # Change to your preferred region
}

resource "aws_instance" "my_vm" {
  ami           = "cb-se-workspace-caching-s3-user"  
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-VM"
  }
}
