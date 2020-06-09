resource "aws_s3_bucket" "logs_bucket" {
  bucket = "ssm-logs-bucket-ssc"
  acl    = "private"

  tags = {
    Name = "SSC"
  }
}
