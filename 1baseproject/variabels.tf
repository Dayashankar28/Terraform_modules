# variable "root_s3_backend_name" {
#   type = string
# }

# variable "root_dynamodb_name" {
#   type = string
# }

# variable "root_hash_key" {
#   type = string
# }

# variable "instance_type" {
#   type = string
# }

# variable "key_name" {
#   type = string
# }

# variable "keypath" {
#   type = string
# }

variable "root_cidr_block" {
  type = string
  default = "8.8.0.0/16"
}