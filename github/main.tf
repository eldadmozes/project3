# provider "aws" {
#   region = "us-east-1"
# }

# terraform {
#   required_providers {
#     github = {
#       source  = "integrations/github"
#       version = "~> 5.0"
#     }
#   }
# }

# variable "GITHUB_TOKEN" {
#   type    = string
# }

# provider "github" {
#   token = var.GITHUB_TOKEN
# }

# resource "github_repository" "project3-repo" {
#   name        = "project3-repo"
#   description = "This repository created by Terraform"
#   visibility  = "public"
#   auto_init   = true
# }

# resource "github_branch_default" "default_main" {
#   repository = github_repository.project3-repo.name
#   branch     = "main"
# }


provider "aws" {
  region = "us-east-1"
}

terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

variable "GITHUB_TOKEN" {
  type = string
}

provider "github" {
  token = var.GITHUB_TOKEN
}

module "github" {
  source        = "/github"
  version       = "~> 5.0"
  GITHUB_TOKEN  = var.GITHUB_TOKEN
  repository_name = "project3-repo"
}
