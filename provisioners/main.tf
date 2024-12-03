module "create_ec2" {
  source = "github.com/Dayashankar28/terraform-modules-daya//modules/create_ec2_daya"
  instance_type = var.root_instance_type
  key_name = var.root_key_name
}

module "remote-exec" {
  source = "github.com/Dayashankar28/terraform-modules-daya//modules/remote-exec"
  ec2_user = var.root_ec2_user
  ec2_public_ip = module.create_ec2.ec2_public_ip
  ec2_pem = var.root_key_path
}  