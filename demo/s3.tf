resource "aws_s3_bucket" "own_bucket" {
  bucket = var.create_bucket
  tags = {
    Name        = var.create_bucket
    
  }
}