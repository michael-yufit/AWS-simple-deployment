resource "aws_s3_bucket" "logs_bucket" {
  bucket = "ssm-logs-bucket-ssc-jkhhkjhbjhvjhg"
  acl    = "private"

  tags = {
    Name = "SSC"
  }
}
