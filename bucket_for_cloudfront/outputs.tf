
output "source_bucket_id" {
  value       = aws_s3_bucket.origin_bucket.id
  description = "Origin bucket ID"
}

output "source_bucket_arn" {
  value       = aws_s3_bucket.origin_bucket.arn
  description = "Origin bucket amazon resource name (ARN)"
}

output "source_bucket_domain" {
  value       = aws_s3_bucket.origin_bucket.bucket_domain_name
  description = "Origin bucket domain name "
}

output "source_bucket_regional_domain" {
  value       = aws_s3_bucket.origin_bucket.bucket_regional_domain_name
  description = "Origin bucket regional domain name.Use this for CloudFront"
}

