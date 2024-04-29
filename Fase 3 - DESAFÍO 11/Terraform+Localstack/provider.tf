provider "aws" {
  region                      = "eu-west-1"
  access_key                  = "null"
  secret_key                  = "null"
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true
  s3_use_path_style           = true

  endpoints {
    ec2             = "http://192.168.73.133:4566"
    route53         = "http://192.168.73.133:4566"
    route53resolver = "http://192.168.73.133:4566"
    s3              = "http://192.168.73.133:4566"
    s3control       = "http://192.168.73.133:4566"
    sts             = "http://192.168.73.133:4566"
  }

  default_tags {
    tags = {
      Enviroment = "Local"
      Service    = "LocalStack"
    }
  }
}

terraform {
  required_version = "= 1.8.1"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.60.0, <= 4.22.0"
    }
  }
}