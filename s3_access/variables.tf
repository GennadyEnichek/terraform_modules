variable "s3_id" {
  type        = string
  description = "S3 bucket ID for wich the access should set"
}

variable "access_true_or_false" {
  type        = bool
  description = "Use 'true' to activate access restriction or 'false' to deactivate access restriction"
}
