terraform {
  backend "s3" {
    bucket         = "kolkar-terraform-state"
    key            = "Dev/terraform.tfstate"
    region         = "ap-south-1" # ✅ Update this to match your bucket’s actual region
    use_lockfile   = true         # ✅ Replaces dynamodb_table
    encrypt        = true
    dynamodb_table = "terraform-locks"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  required_version = ">= 1.0.0"
}


