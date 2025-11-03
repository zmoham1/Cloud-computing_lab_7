terraform {
  backend "s3" {
    bucket         = "terraform-state-lab7a-zm"
    key            = "terraform/state.tfstate"
    region         = "us-east-2"
    encrypt        = true
    dynamodb_table = "terraform-lock-zm"
  }
}
