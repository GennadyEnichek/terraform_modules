# Create s3 bucket as source for AWS CloudFront. The ownership of the bucket should be set to Bucket Owner Preffered
# The policy of the bucket should be set after Cloud Front distributing

# https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-restricting-access-to-s3.html


# Create the s3 bucket to be origin for Cloud Front
resource "aws_s3_bucket" "origin_bucket" {
  bucket = var.s3_bucket_name
}

# The module replace 'aws_s3_bucket_public_access_block' resource and make the bucket private
module "public_access_off" {
  source = "git@github.com:GennadyEnichek/terraform_modules.git//s3_access?depth=1&ref=v1.0.0"

  s3_id                = aws_s3_bucket.origin_bucket.id
  access_true_or_false = true
}

# The resource required for CloudFront Origin Access Control (OAC)
# Bucket policy chould be added after ClourFront resource is created
module "ownership" {
  source = "git@github.com:GennadyEnichek/terraform_modules.git//s3_ownership?depth=1&ref=v1.0.0"

  s3_id     = aws_s3_bucket.origin_bucket.id
  ownership = 2
}

# To be sure that encription is active
module "s3_default_encription" {
  source = "git@github.com:GennadyEnichek/terraform_modules.git//s3_encription?depth=1&ref=v1.0.0"

  s3_id = aws_s3_bucket.origin_bucket.id

}

module "versioning" {
  source = "git@github.com:GennadyEnichek/terraform_modules.git//s3_versioning?depth=1&ref=v1.0.0"

  s3_id  = aws_s3_bucket.origin_bucket.id
  enable = true
}
