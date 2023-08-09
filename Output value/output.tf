provider "aws" {

    region = "us-east-1"
  
}

resource "aws_eip" "my_elasticip" {
  domain   = "vpc"

}
# one way to generate public ip through output
output "public-ip" {

    value = aws_eip.my_elasticip.public_ip
  
}

# using link also we can generate public ip
output "public-ip1" {

    value = "https://${aws_eip.my_elasticip.public_ip}:8080"
  
}

# if we can not mention what we want in output then it 
# it will generate all the attribute present in that resource here the resource is elastic ip
output "public-ip2" {

    value = aws_eip.my_elasticip
  
}


