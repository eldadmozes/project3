provider "aws" {
  region = "us-east-1"  # Update with your desired region
}

resource "aws_dynamodb_table" "project3_table" {
  name           = "project3_table"
  billing_mode   = "PROVISIONED"
  hash_key       = "id"
  read_capacity  = 10
  write_capacity = 10

  attribute {
    name = "id"
    type = "N"
  }

  attribute {
    name = "first_name"
    type = "S"
  }

  attribute {
    name = "last_name"
    type = "S"
  }

  global_secondary_index {
    name               = "first_name_index"
    hash_key           = "first_name"
    projection_type    = "ALL"
    read_capacity      = 5
    write_capacity     = 5
  }
}
