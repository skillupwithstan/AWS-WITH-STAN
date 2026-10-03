terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  # Configuration options
    region = "us-east-1"
}

# Create a S3 bucket
resource "aws_s3_bucket" "stan-test-bucket-102" {
  bucket = "stan-test-bucket-102"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

# Create 2nd S3 bucket
resource "aws_s3_bucket" "stan-test-bucket-103" {
  bucket = "stan-test-bucket-103"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
