## S3 Bucket Resource
# resource "aws_s3_bucket" "my_s3_bucket" {
#   # Use for_each to dynamically create buckets for all names in the list
#   for_each = toset(var.s3_name) # Convert the list of bucket names to a set for iteration

#   bucket        = each.key             # Use the bucket name from the current iteration
#   force_destroy = var.force_destroy    # Enable force destroy if specified in variables

#   # Tags for the bucket
#   tags = merge(
#     {
#       Name = each.key                  # Default tag: The name of the bucket
#     },
#     var.common_tags                    # Add any additional common tags provided via variables
#   )
# }

# # S3 Bucket Versioning Resource
# resource "aws_s3_bucket_versioning" "s3_versioning" {
#   # Use for_each to enable versioning for each bucket created above
#   for_each = aws_s3_bucket.my_s3_bucket

#   bucket = each.value.id               # Reference the bucket ID from the S3 bucket resource

#   versioning_configuration {
#     status = var.enable_versioning     # Enable or disable versioning based on input variable
#   }
# }