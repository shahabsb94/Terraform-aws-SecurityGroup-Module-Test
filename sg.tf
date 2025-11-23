module "mysql_sg" {
  source = "../Terraform-aws-SecurityGroup-Module"
  project_name = var.project_name
  environment = var.environment
  vpc_id = data.aws_ssm_parameter.vpc_id.value
  common_tags = var.common_tags
}