resource "aws_s3_bucket" "bucket" {
  bucket = var.name-bucket
  acl    = var.acl
  force_destroy = true
  tags = {
    Name        = "My bucket"
    Environment = var.environment
  }
}