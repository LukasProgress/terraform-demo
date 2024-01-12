terraform {
    required_providers {
      aws = {
        source = "hashicorp/aws"
        version = "~> 5.0"
      }
    }
}

provider "aws" {
  region = var.region
}

module "key_module" {
  source = "./modules/key_module"
  key_name = "terraform-key"
}

resource "aws_instance" "myInstance" {
  ami = "ami-025a6a5beb74db87b"
  instance_type = "t2.micro"
  
  tags = {
    "Name" = "Homework Instance"
  }
  key_name = module.key_module.key_name

  vpc_security_group_ids = [aws_security_group.my_security_group.id]
}

resource "aws_security_group" "my_security_group" {
  name = "allowHTTP"
  
  ingress {
    description      = "HTTP"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
 
  ingress {
    description      = "SSH"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
}

data "aws_instance" "external_instance" {
  instance_id = "i-006798a57dcc7e204"
}