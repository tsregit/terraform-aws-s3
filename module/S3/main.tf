resource "aws_s3_bucket" "bucket" {
  bucket = var.name_bucket
  acl    = var.acl
  force_destroy = true
  tags = {
    Name        = var.name
    Environment = var.environment
    Terraform   = true
  }
}