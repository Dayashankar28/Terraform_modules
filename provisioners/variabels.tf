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


variable "root_source_path" {
    type = string
    default = "dummy_dir"
}

variable "root_destination_path" {
    type = string
    default = "/home/ubuntu/"
}

variable "root_cidr_block" {
    type = string
    default = "10.4.0.0/16"
}