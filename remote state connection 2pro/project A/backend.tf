terraform {
  backend "s3" {
    bucket = "terraform-backbucket"
    key    = "network/eip.tfstate"
    region = "us-east-1"
   
  }
}