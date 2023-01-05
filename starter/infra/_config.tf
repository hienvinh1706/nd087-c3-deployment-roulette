terraform {
  backend "s3" {
    bucket  = "udacity-tf-vinhtch" # Update here with your S3 bucket
    key     = "terraform/terraform.tfstate"
    region  = "us-east-2"
    profile = "Temp-QuangND56"
  }
}

provider "aws" {
  region  = "us-east-2"
  profile = "Temp-QuangND56"

  default_tags {
    tags = local.tags
  }
}
