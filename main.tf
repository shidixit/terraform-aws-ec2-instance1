terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

resource "aws_instance" "app_server" {
  ami           = "ami-09e67e426f25ce0d7"
  instance_type = var.instance_type
  root_block_device {
   volume_size = var.web_root_volume_size
  }
  tags = {
    Name = "ExampleAppServerInstance"
  }
}
