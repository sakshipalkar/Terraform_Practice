provider "aws" {}

locals {
  
  time= formatdate("DD MM YYYY hh:mm ZZZ", timestamp())
  
}
variable "tags" {

    type = list
    default =["firstec2","secondec2"]
  
}
variable "ami" {
   type = map
   default ={
   "us-east-1" ="ami-053b0d53c279acc90"
   "us-east-1a" ="ami-06ca3ca175f37dd66"
   "us-east-1b" ="ami-06ca3ca175f37dd66"
    }
}


variable "region" {
  default = "us-east-1"
}
resource "aws_key_pair" "login_key" {
    key_name = "login-keys"
    public_key = file("${path.module}/login-key.pem")
}


resource "aws_instance" "my_instance" {
    ami = lookup(var.ami,var.region)
    instance_type = "t2.small"
    key_name = aws_key_pair.login_key.key_name
    count = 2
    tags = {
        Name = element(var.tags,count.index)
    }
  
}

output "timestamp" {

    value = local.time
  
}