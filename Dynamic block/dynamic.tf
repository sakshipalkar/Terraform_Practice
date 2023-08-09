provider "aws" {}


variable "sg_ports" {
    type = list(number)
    default = [ 8200,8300,9200 ]
  
}

resource "aws_security_group" "dynamic-sc" {
  name        = "dynamic-sc"
  description = "ingress in vault"
  dynamic "ingress" {# this ingress means inbound rule 
  #construct repetative blocks in nestated way
  for_each = var.sg_ports

  content {
    from_port        = ingress.value
    to_port          = ingress.value
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  
         }
  }
    dynamic "egress" {# this ingress means outbound rule 
  #construct repetative blocks in nestated way
  for_each = var.sg_ports
  iterator = port # iterator is also way to use it is easier to read 
  content {
    from_port        = port.value
    to_port          = port.value
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  
         }
}
}
  