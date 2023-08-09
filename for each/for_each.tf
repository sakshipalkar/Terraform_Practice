provider "aws" {}

resource "aws_instance" "ec2" {

    ami = "ami-053b0d53c279acc90"
    for_each ={

        key1="t2.micro"
        key2="t2.small"
    }
    instance_type = each.value
    key_name      = each.key 
    tags = {
        Name = each.value
    } 
}