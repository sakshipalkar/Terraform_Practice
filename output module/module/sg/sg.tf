resource "aws_security_group" "sg" {
  name        = "my-sg"
  description = "Allow TLS inbound traffic"
  ingress {
    description = "TLS from VPC"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "sg-group"
  }
}

output "aws_security_id" {

    value = aws_security_group.sg.id
  
}