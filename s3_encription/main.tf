
# The module ensures AWS default (SSE-S3) encription 

resource "aws_s3_bucket_server_side_encryption_configuration" "website_source_encription" {
  bucket = var.s3_id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256" # The default encription SSE-S3
    }
  }
}
