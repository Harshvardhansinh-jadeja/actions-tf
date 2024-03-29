
variable "secret_key" {}
variable "access_key" {}
provider "aws" {
  region = "us-west-2"
  access_key = var.access_key
  secret_key = var.secret_key
  # profile = "harshvardhan-th"
}

terraform {
      
      backend "remote" {
        organization = "harshvardhansinh_jadeja"
        workspaces {
          name = "harshvardhan-remote-cli"
        }
      }
    }

resource "aws_instance" "tf_ec2" {
    ami = "ami-0ecb0bb5d6b19457a"
    instance_type = "t2.micro"
}