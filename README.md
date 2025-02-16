# Create Your Own S3 Bucket Module

## Overview
Welcome to the S3 bucket module exercise! Your goal is to create a Terraform module that deploys multiple AWS S3 buckets using a **list of bucket names**. Follow the hints below and try not to look at the solution until you're done.

## Instructions
1. **Navigate to the `s3_exercise/` folder**: This is where you’ll write your module files.
2. **Update your module to support multiple buckets**:
   - Use the `for_each` meta-argument to loop through a list of bucket names.
   - Update the `s3_name` variable in `variables.tf` to accept a list of strings.
3. **Test your module**:
   - In the `main.tf` file at the parent level, call your module with a list of bucket names.
   - Use a `.tfvars` file to store the list of bucket names and other input variables.
4. **Compare your solution**: Once you're done, check the `s3_solution/` folder for the completed example. Remember to uncomment the code, copy the module block and variable code to the parent level main.tf. Also drag the var.tfvars in line with the parent files

## Example `.tfvars` File
Use this file to pass a list of bucket names and other values into your module:
```hcl
s3_name = ["my-first-bucket", "my-second-bucket", "my-third-bucket"]
force_destroy = true
enable_versioning = "Enabled"
common_tags = {
  Owner       = "YourNameHere"
  Environment = "Development"
}