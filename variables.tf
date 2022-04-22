  variable "Access_key_ID" {
    description = "Access key of aws"
    type = string
  }

  variable "Secret_access_key" {
    description = "Secret Access key of AWS"
    type = string
  }

  variable "aws_region" {
  description = "The AWS region to use to create resources."
  default     = "us-east-1"
}
