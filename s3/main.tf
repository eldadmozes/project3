resource "aws_s3_bucket" "project3_bucket" {
  bucket = "project3-bucket"

  tags = {
    Name        = "project3-bucket"
    Environment = "Production"
  }
}