  variable "Access_key_ID" {
    default ="AKIAX2MAADMD22K6WNAI"
    description = "Access key of aws"
    type = string
  }

  variable "Secret_access_key" {
    default ="zDCPJlbT4/NPiHpDs/w8MYu/5bROFhQxPabxml15"
    description = "Secret Access key of AWS"
    type = string
  }

  variable "aws_region" {
  description = "The AWS region to use to create resources."
  default     = "us-east-1"
}
