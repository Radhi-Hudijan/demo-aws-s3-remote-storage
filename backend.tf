terraform {
  backend "s3" {
    profile = "demo"
    bucket  = "terraform-state-demo"
    key     = "terraform.tfstate"
  }
}