provider "aws" {}
  

/*resource "aws_iam_user" "bar" {
  name = var.type[count.index]# "load.${count.index}"==o/p==load[0]
  count=3
  

}

variable "type"{

    type = list
    default=["dev-load","qa-load","prod-load"]
    
}*/

# for splat expression


/*variable "name" {

  type = list
  default = ["rohan","janvi"]
  
}*/

/*resource "aws_iam_user" "lb" {
  for_each = {
    key =["rohan","janvi"]

  }
  name = each.key

}====by using for each */

resource "aws_iam_user" "lb" {
  name = "aws_iam_user.${count.index}"
  count=2
  
  
}
output "arn"{

  value = aws_iam_user.lb[*].arn
  # "*" is spalat expression 
  #instead of * we can put o,1
  
}

/*output "name" {

  value = aws_iam_user.lb[*].name
  
}

output "combine" {
  
  value = zipmap(aws_iam_user.lb[*].name,aws_iam_user.lb[*].arn)
}*/