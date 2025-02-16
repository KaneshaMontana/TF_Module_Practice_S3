## Copy and uncomment this module block, the variables and the var.tfvars to the parent level main.tf

# Call the S3 module to dynamically create multiple buckets and enable versioning
# module "multiple_s3_buckets" {
#   source            = "./s3_exercise" # Path to the child module

#   # Pass variables dynamically to the module
#   s3_name           = var.s3_name           # List of bucket names
#   enable_versioning = var.enable_versioning # Versioning status
#   force_destroy     = var.force_destroy     # Force bucket deletion
#   common_tags       = var.common_tags       # Common tags for all buckets
# }

# Variable for a list of bucket names
# variable "s3_name" {
#   description = "A list of S3 bucket names to create"
#   type        = list(string)
#   default     = [] # Example: ["bucket-one", "bucket-two", "bucket-three"]
# }

# # Variable for enabling versioning
# variable "enable_versioning" {
#   description = "Specifies whether to enable versioning for the buckets (e.g., Enabled or Suspended)"
#   type        = string
#   default     = "Enabled" # Default to enabling versioning
# }

# # Variable for force destroy
# variable "force_destroy" {
#   description = "A boolean that determines if the bucket and its objects can be forcefully deleted"
#   type        = bool
#   default     = false # Default to not forcefully destroy buckets
# }

# # Variable for common tags
# variable "common_tags" {
#   description = "A map of common tags to apply to all buckets"
#   type        = map(string)
#   default     = {} # Default to an empty map if no tags are provided
# }