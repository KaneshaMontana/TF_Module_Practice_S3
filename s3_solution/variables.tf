# ## Variable for a list of bucket names
# variable "s3_name" {
#   description = "A list of S3 bucket names to create"
#   type        = list(string)
#   default     = [] # Example: ["bucket-one", "bucket-two"]
# }

# ## Variable for enabling versioning
# variable "enable_versioning" {
#   description = "Specifies whether to enable versioning for the buckets (e.g., Enabled or Suspended)"
#   type        = string
#   default     = "Enabled" # Default to enabling versioning
# }

# ## Variable for force destroy
# variable "force_destroy" {
#   description = "A boolean that determines if the bucket and its objects can be forcefully deleted"
#   type        = bool
#   default     = false # Default to not forcefully destroy buckets
# }

# ## Variable for common tags
# variable "common_tags" {
#   description = "A map of common tags to apply to all buckets"
#   type        = map(string)
#   default     = {} # Default to an empty map, if no tags are provided
# }