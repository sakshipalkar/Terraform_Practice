provider "aws" {
  region  = "us-east-1"
}

resource "aws_eip" "my_elasticip" {
  domain   = "vpc"

}

resource "aws_security_group" "sc-grp" {
  name        = "sc-grp"
  description = "Allow TLS inbound traffic"
  # taking vpc id as default
 

  ingress {
    description = "TLS from VPC"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["${aws_eip.my_elasticip.public_ip}/32"]                                                                                               
    # public ip "18.211.222.36/32" have to put in curly bracket with $ sign 
    # as /32 then only cidr block take that ip
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "sc-grp"
  }
}