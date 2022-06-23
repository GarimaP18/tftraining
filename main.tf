terraform {
  required_version = ">= 0.15"
  required_providers {
    local ={
        source = "hashicorp/local"
        version = "~>2.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  access_key = "AKIAQELCSRFV5IVQ3MZM"
  secret_key = "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"
}

resource "aws_instance" "name" {
  ami = "ami-052efd3df9dad4825"
  instance_type = "t2.micro"
  tags = {
  Name = "my-first-instance_gp"
}
}
