resource "aws_s3_bucket" "create_s3" {
  bucket = "${var.s3_bucket}"

}