provider "github" {
  token        = "TF_VAR_github_token"
}

resource "github_repository" "project3_repo" {
  name        = "project3-repo"
  description = "Example repository created by Terraform"
  visibility  = "public"  # Set to "private" if you want a private repository
}
