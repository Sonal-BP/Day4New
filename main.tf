provider "aws" {
  region = "us-east-1"  # Specify your AWS region
}
 
resource "aws_instance" "terraform-examplee" {
  count         = 2
  ami           = "ami-03972092c42e8c0ca"  # Replace with your desired AMI ID
  instance_type = "t2.medium"      # Specify instance type (e.g., t2.micro)
  key_name      = "NNnn"
 
  tags = {
    Name = "terraform-example-${count.index + 1}"
  }
}
