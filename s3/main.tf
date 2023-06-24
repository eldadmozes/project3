resource "aws_s3_bucket" "project3_bucket-12" {
  bucket = "project3-bucket-12"

  tags = {
    Name        = "project3-bucket-12"
    Environment = "Production"
  }
}