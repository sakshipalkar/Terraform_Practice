resource "aws_s3_bucket" "tf_my_bucket" {

    bucket = var.tf_demo_bucket
    tags = {
      name = var.tf_demo_bucket

    }
  
}