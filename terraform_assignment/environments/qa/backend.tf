terraform {
  backend "s3" {
    bucket         = "terraform-state-apoorva613"
    key            = "qa/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "terraform-lock"
  }
}
