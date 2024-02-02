provider "aws" {
  region = "us-west-2"
  profile = "harshvardhan-th"
}


resource "aws_instance" "tf_ec2" {
    ami = "ami-0ecb0bb5d6b19457a"
    instance_type = "t2.micro"
}