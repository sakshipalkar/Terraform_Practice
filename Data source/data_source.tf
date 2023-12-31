provider "aws" {

    region = "us-east-1"
  
}

data "aws_ami" "ami" {
  most_recent = true

  owners = ["amazon"]
filter {
  name = "name"
  values = ["amzn2-ami-hvm*"]
  }
}

resource "aws_instance" "my-ins" {

    ami = data.aws_ami.ami.id
    instance_type = "t2.micro"  

}