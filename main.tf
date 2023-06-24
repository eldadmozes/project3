provider "aws" {
    region = "us-east-1"
}

module "ec2" {
  source = "./ec2"
}

# module "s3" {
#   source = "./s3"
# }

# module "iam" {
#   source = "./iam"
# }

# module "dynamodb" {
#   source = "./dynamodb"
# }


# module "github" {
#   source = "./github"

# }