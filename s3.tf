resource "aws_s3_bucket" "terraform" {
  bucket = "my-tf-bucket"
  region = "us-east-1"
  acl = "private"

  tags = {
    "name" = "My bucket"
    Environment = "test"
  }
}