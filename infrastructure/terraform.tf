terraform {
  backend "s3" {
    bucket = "terraform-state-duypk"
    key    = "prod/terraform.tfstate"
    region = "ap-southeast-1"
  }
  # backend "http" {
  #   address        = "http://localhost:8080/terraform_state/my_state"
  #   lock_address   = "http://localhost:8080/terraform_lock/my_state"
  #   lock_method    = "PUT"
  #   unlock_address = "http://localhost:8080/terraform_lock/my_state"
  #   unlock_method  = "DELETE"
  # }
  required_version = ">= 1.4.0"
  required_providers {
    http = {
      source  = "hashicorp/http"
      version = "2.1.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.2.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "2.1.0"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "4.0.5"
    }
  }
}

provider "aws" {
  region = "ap-southeast-1"
}