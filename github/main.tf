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
  token = "TF_VAR_github_token"
}
resource "github_repository" "project3-repo" {
  name        = "project3-repo"
  description = "This repository created by terraform"
  visibility  = "public"
  auto_init   = true
}

resource "github_branch_default" "default_main" {
  repository = "project3-repo"
  branch     = "main"
}
