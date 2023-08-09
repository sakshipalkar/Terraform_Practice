provider "aws" {}
#error
resource "aws_instance" "myec2" {
  ami = "ami-06ca3ca175f37dd66"
  instance_type = "t2.small"
  key_name = "terraform-key"

   connection {
    type     = "ssh"
    user     = "ec2-user"
    private_key = file("./terraform-key.pem")
    host     = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "sudo amazon-linux-extras install -y nginx1",
      "sudo systemctl start nginx"
    ]
  }
}




