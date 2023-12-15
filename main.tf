terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-west-1"
}

resource "aws_instance" "homework" {
  ami           = "ami-0cbd40f694b804622"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0400fda14a7993d65"]
  key_name = "homework_key_pair"
  tags = {
    Name = "homework tag"
  }
}