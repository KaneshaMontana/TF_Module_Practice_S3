# Parent-level main.tf file
# This file is used to call the child module you created in the `s3_exercise` folder.
# Follow the instructions and comments below to refine this file and test your module.

# --- Instructions ---
# 1. Uncomment the `module` blocks and define the required values.
# 2. Use a `.tfvars` file to store input values and reference it when running Terraform commands.
#    For example, create a `terraform.tfvars` file with the following format:
#       s3_name = "my-first-bucket"
#       force_destroy = true
#       enable_versioning = "Enabled"
#       common_tags = {
#           Environment = "Development"
#           Owner       = "YourNameHere"
#       }
# 3. Test the module by running:
#       terraform init
#       terraform plan -var-file="terraform.tfvars"
#       terraform apply -var-file="terraform.tfvars"

# --- Additional Guidance ---
# You can create multiple S3 buckets by passing a list of names as a variable.
# Use the `for_each` functionality within your module to iterate over the list of names when creating resources.
# For example:
#    s3_name = ["my-first-bucket", "my-second-bucket"]


# --- Module Block 1: Multiple S3 Buckets ---
# Uncomment this block to create multiple S3 buckets using a list of names.
# Remember to update your `variables.tf` file in the module to handle lists (e.g., `type = list(string)`).
# module "multiple_s3" {
#   source            = "./s3_exercise"
#   s3_name           = ["my-first-bucket", "my-second-bucket"]
#   force_destroy     = true
#   enable_versioning = "Enabled"
#   common_tags       = {
#       Environment = "Development"
#       Owner       = "YourNameHere"
#   }
# }

# --- Note ---
# Defining resources at the parent level:
# You can optionally add resources (like IAM roles or policies) at this parent level if they are shared across multiple modules.
# For example, create a logging bucket or an IAM policy here that all child S3 buckets can reference.