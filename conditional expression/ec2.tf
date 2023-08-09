provider "aws" {}


variable "test" {
  
}
resource "aws_instance" "dev" {

    ami = "ami-053b0d53c279acc90"
    instance_type = "t2.small" 

    count = var.test == true ? 1 : 0

    #condition               ? true_val:false_val
    #it is similar to count = 3 instead of 1 if we put 3 then after condition true it will generate 3 instances.
}

resource "aws_instance" "prod" {

    ami = "ami-053b0d53c279acc90"
    instance_type = "t2.medium" 
    count = var.test == false ? 1 : 0
     #condition               ? true_val:false_val

}