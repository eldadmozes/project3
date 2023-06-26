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

provider "github" {
  token = var.GITHUB_TOKEN
}
resource "github_repository" "project3-repo" {
  name        = "project3_repo"
  description = "This repository created by terraform"
  visibility  = "public"
  auto_init   = true
}

resource "github_branch_default" "project3-main_br" {
  repository = "Terraform-project"
  branch     = "main"
}