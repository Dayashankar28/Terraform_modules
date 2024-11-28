variable "root_s3_backend_name" {
  type = string
  default = "daya-s3-backend-learing44"
}

variable "root_dynamodb_name" {
  type = string
  default = "daya-backend-locking44"
}

variable "root_hash_key" {
  type = string
  default = "LockID"
}