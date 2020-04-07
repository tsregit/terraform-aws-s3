module "s3-estandar" {
  source = "../module/S3"
  
  name_bucket = var.name_bucket
  acl = var.acl
  aws_region = var.aws_region
  aws_id = var.aws_id
  profile = var.profile
  environment = var.environment
  name = var.name
}
