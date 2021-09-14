variable "vpc_cidr" {
    default = "10.0.0.0/16"
    description = "VPC CIDR Block"
    type = string
  }

variable "public_subnet_1_cidr" {
    default = "10.0.0.0/24"
   description = "Pubilc subnet-1 CIDR Block"
   type = string
  }

  variable "public_subnet_2_cidr" {
    default = "10.0.1.0/24"
   description = "Pubilc subnet-2 CIDR Block"
   type = string
  }
 variable "private_subnet_1_cidr" {
    default = "10.0.2.0/24"
   description = "Private subnet-1 CIDR Block"
   type = string
  }

 variable "private_subnet_2_cidr" {
    default = "10.0.3.0/24"
   description = "Private subnet-2 CIDR Block"
   type = string
  }
  
 variable "private_subnet_3_cidr" {
    default = "10.0.4.0/24"
   description = "Private subnet-3 CIDR Block"
   type = string
  }

 variable "private_subnet_4_cidr" {
    default = "10.0.5.0/24"
   description = "Private subnet-4 CIDR Block"
   type = string
  }

  variable "Access_key_ID" {
    default = "AKIAWOJIJY26XITOJZ4V"
    description = "Access key of aws"
    type = string
  }

  variable "Secret_access_key" {
    default = "vs0zMAvS5fSEi8o8q+HTLEH6/CJdTBI5gbXJKVWT"
    description = "Secret Access key of AWS"
    type = string
  }

  variable "aws_region" {
  description = "The AWS region to use to create resources."
  default     = "us-east-1"
}

variable "acl" {
  default = "private"
  description = "Default to private"
  type = string
}

variable "bucket_prefix" {
  default = "my-s3-bucket-"
  description = "prefix name of bucket"
  type = string
}