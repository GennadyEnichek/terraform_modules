
# Enables or disables s3 bucket versioning

locals {
  rule = var.enable ? "Enabled" : "Disabled"
}

resource "aws_s3_bucket_versioning" "website_source_versioning" {
  bucket = var.s3_id
  versioning_configuration {
    status = local.rule
  }
}
