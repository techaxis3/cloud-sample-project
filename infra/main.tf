# Terraform placeholder file for demo purposes only.
# Do NOT apply this without reviewing and adjusting for your environment.

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  # region = "us-east-1"
  # Configure credentials via environment variables or AWS CLI.
  # This is a demo file; do not run in production as-is.
}

resource "aws_s3_bucket" "demo_bucket" {
  bucket = "demo-cloud-project-bucket-12345" # change to a unique name if testing
  acl    = "private"

  tags = {
    Name        = "demo-cloud-project-bucket"
    Environment = "demo"
  }
}
