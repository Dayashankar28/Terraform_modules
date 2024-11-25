terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 5.0"
    }
  }

  backend "s3" {

      bucket = "daya-s3-backend-learing"
      key = "state/terraform.tfstate"
      region = "ap-south-1"
      dynamodb_table = "daya-backend-locking"
        
        }

}