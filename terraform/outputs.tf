output "website_bucket_name" {
  value = aws_s3_bucket.website_bucket.id
}

output "cloudfront_distribution_id" {
  value = aws_cloudfront_distribution.s3_distribution.id
}

output "website_url" {
  value = aws_cloudfront_distribution.s3_distribution.domain_name
}
