output "IGW_NAME" {
  value = module.create_vpc.igw_name
}

output "VPC_NAME" {
  value = module.create_vpc.vpc_name
}

output "CIDR_BLOCK" {
  value = module.create_vpc.cidr_block
}

output "Public_Subnet" {
  value = module.create_vpc.public_subnet_cidr
}

output "Private_Subnet" {
  value = module.create_vpc.private_subnet_cidr
}