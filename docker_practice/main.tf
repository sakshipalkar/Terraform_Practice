terraform {
  required_providers {
     aws = {
      source = "hashicorp/aws"
      version = "4.61.0"
    }
    docker = {
      source = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "aws" {
  access_key = "AKIAXRAWM5RYPCZ7F2OG"
  secret_key = "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"
  region = "us-east-1"
}

provider "docker" {
    host = "//./pipe/docker_engine"
}



resource "docker_image" "nginx" {
  name         = "nginx"
  keep_locally = false
}

resource "docker_container" "nginx" {
  image = docker_image.nginx.name
  name  = "tutorial"
  ports {
    internal = 80
    external = 80
  }
}
