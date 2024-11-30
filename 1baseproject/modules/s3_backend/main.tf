resource "aws_s3_bucket" "s3_backend" {
  bucket = var.s3_backend_name

  # tags = {
  #   Name        = "s3_backend_daya"
  #   Environment = "Dev"
  # }
}

resource "aws_s3_bucket_versioning" "s3_backend_versioning_enable" {
  bucket = aws_s3_bucket.s3_backend.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "s3_backend_sse" {
  bucket = aws_s3_bucket.s3_backend.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm     = "AES256"
    }
  }

    depends_on = [ 
            aws_s3_bucket_versioning.s3_backend_versioning_enable,
            aws_s3_bucket.s3_backend
         ]

}