resource "aws_s3_bucket" "project3_bucket-1" {
  bucket = "project3-bucket"

  tags = {
    Name        = "project3-bucket-1"
    Environment = "Production"
  }
}