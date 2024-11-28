module "root_create_s3_backend" {
  source = "./modules/s3_backend"
  s3_backend_name = var.root_s3_backend_name

}

module "root_create_dynamodb_locking" {
  source = "./modules/dynamodb"
  dynamodb_name = var.root_dynamodb_name
  hash_key = var.root_hash_key
}

module "create_ec2" {
  source = "./modules/ec2creation"
  instance_type = "t2.micro"
  key_name = "teraform-key.pem"
  keypath = "./keys/teraform-key.pem"
}