/*terraform {
  backend "s3" {
    bucket = "terraform-backbucket"
    key    = "network/terraform.tfstate"
    region = "us-east-1"
  }
}
*/

# Integration Dynamodb with s3 for state locking
terraform {
  backend "s3" {
    bucket = "terraform-backbucket"
    key    = "network/demo.tfstate"
    region = "us-east-1"
    dynamodb_table = "mystatelock-table"
  }
}

resource "time_sleep" "wait_100_seconds" {

    create_duration = "100s"
  
}
