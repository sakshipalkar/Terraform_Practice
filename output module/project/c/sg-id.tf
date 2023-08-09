module "sgmodule" {

    source = "../../module/sg"
  
}

resource "aws_instance" "myec2" {

    ami = "ami-06ca3ca175f37dd66"
    instance_type = "t2.small"
    tags = {
      
      Name="my_first_instance"
    }
    vpc_security_group_ids = [ module.sgmodule.aws_security_id ]
  
}

output "outputmodule" {

    value = [ module.sgmodule.aws_security_id ]
  
}