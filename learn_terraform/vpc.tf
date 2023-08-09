#create vpc
resource "aws_vpc" "my-first-vpc" {
  cidr_block = "10.0.0.0/16"
    tags = {
    Name = "production"
  }
}

#create subnet
resource "aws_subnet" "my-subnet" {
  vpc_id     = aws_vpc.my-first-vpc.id #vpc reference name and id is general fo all
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "prod"
  }
}