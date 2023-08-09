
provider "aws"{}

resource "aws_security_group" "sc-grp" {
  name        = "sc-grp"
  
 

  ingress {
    description = "TLS from VPC"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = [var.vpc_ip]                                                                                               

  }
  ingress {
    description = "TLS from VPC"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = [var.vpc_ip]                                                                                               

  }
  
  
}