variable "root_instance_type" {
  type = string
  default = "t2.micro"
  
}
variable "root_key_name" {
  type = string
  default = "masterkey"
}

variable "root_ec2_user" {
  type = string
  default = "ubuntu"
}

variable "root_key_path" {
  type = string
  default = "./masterkey.pem"
}
