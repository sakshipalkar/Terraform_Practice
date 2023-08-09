
resource "local_file" "batch_3"{
    filename ="saksh_new.txt"
    content = " Hi i am sakshi"
}

resource "random_string" "batch_3_string" {
    length = 15
  
}

output "batch_3_string" {
    value = random_string.batch_3_string[*].result
  
}