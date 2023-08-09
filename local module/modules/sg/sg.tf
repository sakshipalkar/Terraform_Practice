resource "aws_security_group" "sg-group" {
  name        = "terraform-sg"
  description = "Allow TLS inbound traffic"
  

  ingress {
    description = "TLS from VPC"
    from_port   = local.app_port1
    to_port     = local.app_port1
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = local.app_port2
    to_port     = local.app_port2
    protocol    = "ssh"
    cidr_blocks = ["0.0.0.0/0"]
  }
   
 
}#If we define variable istead of locals user can override the the change but we want to
#hardcode port in module itself so locals is used  
  locals {
    app_port1= 443
    app_port2=22

   }
  
