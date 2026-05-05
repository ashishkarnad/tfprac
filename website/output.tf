output "website_url" {
  value = aws_s3_bucket_website_configuration.ashb30apr26config.website_endpoint
  description = "The public URL of the static website"
}