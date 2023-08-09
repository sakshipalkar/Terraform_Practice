
resource "aws_instance" "myec2" {

    ami = "ami-053b0d53c279acc90"
    
    instance_type = var.instance_type
    tags = {
      Name="my_first_instance"
    }
  
}