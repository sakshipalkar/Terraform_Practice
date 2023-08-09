variable "region" {
    default = ""
  
}
variable "aws_ami" {
  default = "ami-04a0ae173da5807d3"
  
}
variable "instance_type" {
   default = "t2.micro"
  
}

variable "tf_demo_bucket" {

    default = "tf-bucket"
  
}

variable "dynamodb_table" {

    default = "dynamodb_table"
  
}





#output "private_ip" {
    #value = aws_instance.Instance.private_ip

#}