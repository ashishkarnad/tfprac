resource "aws_s3_bucket" "ashb30apr26" {
  bucket = "ashb30apr26"
  tags = {
    Name        = "ashb30apr26"
    Environment = "dev"
    Purpose     = "practice"

  }
}

resource "aws_s3_bucket_website_configuration" "ashb30apr26config" {
    depends_on = [aws_s3_bucket.ashb30apr26]
    bucket = aws_s3_bucket.ashb30apr26.id
    
    index_document {
        suffix = "index.html"
    }

    error_document {
        key = "error.html"
    }
}

resource "aws_s3_bucket_public_access_block" "ashb30apr26pab" {
  depends_on = [aws_s3_bucket.ashb30apr26]
  bucket = aws_s3_bucket.ashb30apr26.id
  block_public_acls = false
  block_public_policy = false
  ignore_public_acls = false
  restrict_public_buckets = false
}



resource "aws_s3_bucket_policy" "ashb30apr26_policy" {
  depends_on = [aws_s3_bucket_public_access_block.ashb30apr26pab]
  bucket = aws_s3_bucket.ashb30apr26.id
  policy = file("${path.module}/storage/bucketpolicy.json")
}

resource "aws_s3_object" "upload_index" {
  bucket = aws_s3_bucket.ashb30apr26.id
  key = "index.html"
  source = "${path.module}/index.html"
  content_type = "text/html"
}
resource "aws_s3_object" "upload_error" {
  bucket = aws_s3_bucket.ashb30apr26.id
  key = "error.html"
  source = "${path.module}/error.html"
  content_type = "text/html"
}