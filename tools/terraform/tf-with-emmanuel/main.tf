resource "aws_s3_bucket" "emmanuel" {
  bucket = "abc-bucket-emmanuel-123"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_object" "object" {
  bucket = aws_s3_bucket.emmanuel.bucket
  key    = "s3-bucket-key"
  source = "path/to/file"

  etag = filemd5("path/to/file")
}

// bucket/key1/file key=key1
// bucket/key1/key2/file key=key1/key2