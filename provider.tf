terraform {
  backend "s3" {
    bucket = "aish-delete-this"
    key = "allthingsterraform/state"
    region = "us-east-1"
  }
}

provider "aws" {
  version = "~> 2.0"
  region = var.region
}
