resource "aws_instance" "web" {
  ami           = "ami-00c39f71452c08778"#linux image
  instance_type = var.image

  tags = {
    Name = "HelloWorld"
  }
}
variable "image" {

  type        = string
  default     = "t2.micro"
}
output "prvite-ip" {
value = aws_instance.web.private_ip
  
}
output "public-ip" {
  value = aws_instance.web.public_ip
  
}