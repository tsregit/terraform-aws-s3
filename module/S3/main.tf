resource "aws_s3_bucket" "bucket" {
  bucket        = var.name_bucket
  acl           = var.acl
  force_destroy = true
  tags = {
    Name        = var.name
    Environment = var.environment
    Terraform   = true
  }

  versioning {
    enabled     = var.versioning
  }

  lifecycle_rule {
    id      = var.id
    tags    = merge({
      rule: var.id
    },
      var.tags
    )
    prefix  = var.id
    enabled = var.enabled

    transition {
        days          = var.transitions[0].days
        storage_class = var.transitions[0].storage_class
      }

    transition {
        days          = var.transitions[1].days
        storage_class = var.transitions[1].storage_class
      }

    noncurrent_version_transition {
      days          = var.transitions[0].days
      storage_class = var.transitions[0].storage_class
    }

    noncurrent_version_transition {
        days          = var.transitions[1].days
        storage_class = var.transitions[1].storage_class
    }

    noncurrent_version_expiration {
      days = var.expiration_days
    }

    expiration {
      days = var.expiration_days
    }
  }
}