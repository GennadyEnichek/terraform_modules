variable "s3_id" {
  type        = string
  description = "S3 bucket ID for wich versioning should be enabled or disabled"
}

variable "enable" {
  type        = bool
  description = "Set bool 'true' to enable versioning or 'false' to disable versioning"
}
