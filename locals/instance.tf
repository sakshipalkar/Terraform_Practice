provider "aws" {}

locals {
  
  tags = {
    Owner = "Devops team"
  }
}


resource "aws_instance" "my_instance" {

    ami = "ami-053b0d53c279acc90"
    instance_type = "t2.small" 
    tags = local.tags
}

resource "aws_iam_user" "myname" {
  name = "admin"
  tags = local.tags
 #use another resoure for local
}