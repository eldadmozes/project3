provider "aws" {
  region = "us-east-1"  # Update with your desired region
}

resource "aws_s3_bucket" "project3_bucket" {
  bucket = "project3_bucket"
  acl    = "private"
}

resource "aws_s3_bucket_policy" "project3_bucket_policy" {
  bucket = aws_s3_bucket.project3_bucket.id

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "AllowIAMUsers",
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::${var.account_id}:root"
      },
      "Action": [
        "s3:GetObject",
        "s3:PutObject"
      ],
      "Resource": [
        "arn:aws:s3:::${aws_s3_bucket.project3_bucket.id}/*"
      ]
    }
  ]
}
EOF
}

variable "account_id" {
  description = "AWS Account ID"
  type        = string
}
