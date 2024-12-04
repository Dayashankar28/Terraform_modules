output "vpc_name" {
  value = aws_vpc.main.tags["Name"]
}

output "vpc_id" {
  value = aws_vpc.main.id
}


output "igw_name" {
  value = aws_internet_gateway.tf-igw.tags_all
}


output "igw_id" {
  value = aws_internet_gateway.tf-igw.id
}

output "pb_subnet_name" {
  value = aws_subnet.tf-public-subnet.tags_all
}

output "pb_subnet_id" {
  value = aws_subnet.tf-public-subnet.id
}


output "pt_subnet_name" {
  value = aws_subnet.tf-private-subnet.tags_all
}

output "pt_subnet_id" {
  value = aws_subnet.tf-private-subnet.id
}

output "pb_rt_name" {
  value = aws_route_table.tf-public-rt.tags_all
}

output "pb_rt_id" {
  value = aws_route_table.tf-public-rt.id
}

output "pt_rt_name" {
  value = aws_route_table.tf-private-rt.tags_all
}

output "pt_rt_id" {
  value = aws_route_table.tf-private-rt.id
}



