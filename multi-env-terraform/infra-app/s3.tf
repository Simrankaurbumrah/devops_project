resource "aws_s3_bucket" "example-tws" {
  bucket = "${var.env}-${var.bucket_name}"

  tags = {
    Name        = "tws-jun"
    Environment = var.env
  }
}