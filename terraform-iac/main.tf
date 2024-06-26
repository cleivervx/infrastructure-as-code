terraform {

  required_version = "1.8.2"

  required_providers {

    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.48.0"
      region = var.aws_region
    }

  }
}
