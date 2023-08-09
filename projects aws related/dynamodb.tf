resource "aws_dynamodb_table" "my-dynamodb-table" {
  name           = var.dynamodb_table
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockId"
attribute {
       name      = "LockId"
        type = "S"
  }
tags = {
    name = var.dynamodb_table
  }
}
  
