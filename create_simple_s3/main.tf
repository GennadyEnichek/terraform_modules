
# Create regular bucket no more
resource "aws_s3_bucket" "website_source" {
  bucket = var.s3_name
}

