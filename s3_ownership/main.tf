
locals {
  rule = var.ownership == 3 ? "ObjectWriter" : var.ownership == 2 ? "BucketOwnerPreferred" : "BucketOwnerEnforced"
}


# The resource required for CloudFront Origin Access Control (OAC)
# Bucket policy chould be added after ClourFront resource is created
resource "aws_s3_bucket_ownership_controls" "website_source_owner_control" {
  bucket = var.s3_id

  rule {
    object_ownership = local.rule
  }
}

