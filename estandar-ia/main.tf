module "s3-estandar-ia" {
  source = "../module/S3"
  
  name_bucket = var.name_bucket
  acl = var.acl
  aws_region = var.aws_region
  aws_id = var.aws_id
  profile = var.profile
  environment = var.environment
  name = var.name
  versioning = true
  id = var.id
  enabled = var.enabled
  transitions = var.transitions
  expiration_days = var.expiration_days
  tags = var.tags
}

