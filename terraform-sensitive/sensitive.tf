provider "aws" {
  
}
locals{
    db-password ={
        admin ="password"
    }
}

output "db_password"{
    value = local.db-password
    sensitive = true
}