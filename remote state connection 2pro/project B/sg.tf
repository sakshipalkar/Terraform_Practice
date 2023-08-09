resource "aws_security_group" "sg" {
  name        = "my-sg"
  description = "Allow TLS inbound traffic"


  ingress {
    description = "TLS from VPC"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["${data.terraform_remote_state.eip.outputs.eip_addr}/32"]
  }

 
  
}