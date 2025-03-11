# resource "aws_instance" "public_instance" {
#  ami           = var.ami
#  instance_type = var.instance_type

#  tags = {
#    Name = var.name_tag,
#  }
# }


provider "aws" {
    region = "ap-south-1"  
}

resource "aws_instance" "foo" {
  ami           = "ami-00bb6a80f01f03502" # us-west-2
  instance_type = "t2.micro"
  tags = {
      Name = "TF-Instance"
  }
}