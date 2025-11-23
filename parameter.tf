
### send the sg_id to ssm parameter ####

resource "aws_ssm_parameter" "sg_id" {
  name  = "/${var.project_name}/${var.environment}/sg_id"
  type  = "String"
  value = module.mysql_sg.sg_id
}