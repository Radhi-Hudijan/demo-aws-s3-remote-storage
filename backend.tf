terraform {
  backend "s3" {
    bucket  = "test2-radhi-3344"
    key     = "terraform.tfstate"
    region = "eu-west-1"
  }
}