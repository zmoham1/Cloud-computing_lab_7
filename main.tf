terraform {
  backend "s3" {
    bucket         = "*****"
    key            = "terraform/state.tfstate"
    region         = "us-east-2"
    encrypt        = true
    dynamodb_table = "*****"
  }
}
resource "aws_instance" "example" {
  ami           =  "*****"
  instance_type = "t3.micro"
  tags = {
    Name = "*****"
  }
}
