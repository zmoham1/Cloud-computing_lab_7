

provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "web" {
  count = 3  # Creates 3 instances

  ami           = "*********"
  instance_type = "t3.micro"

  tags = {
    Name = "Terraform-Instance-${count.index}"
  }
}



variable "instances" {
  type = map
  default = {
    "web1" = "t3.micro"
    "web2" = "t3.micro"
    "web3" = "t2.small"
  }
}

resource "aws_instance" "web" {
  for_each = var.instances

  ami           = "********"
  instance_type = each.value

  tags = {
    Name = "${each.key}"
  }
}
