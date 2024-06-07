variable "s3_id" {
  type        = string
  description = "S3 bucket ID for wich ownership rule should be defined"
}

variable "ownership" {
  type        = number
  description = "The bucket owner rule. Set a one of the numbers 1 - 'BucketOwnerEnforced'; 2 - 'BucketOwnerPreferred'; 3 - 'ObjectWriter'. "
  default     = 1

  validation {
    condition     = var.ownership >= 1 && var.ownership <= 3
    error_message = "The ownership variable should be only number 1, 2 or 3"
  }
}
