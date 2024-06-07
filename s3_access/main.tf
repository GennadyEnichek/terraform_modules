
# Switch the public access on or off base on 'access' variables 

resource "aws_s3_bucket_public_access_block" "website_source_access" {
  bucket                  = var.s3_id
  block_public_acls       = var.access_true_or_false
  ignore_public_acls      = var.access_true_or_false
  block_public_policy     = var.access_true_or_false
  restrict_public_buckets = var.access_true_or_false
}


