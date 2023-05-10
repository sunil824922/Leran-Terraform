data "aws_security_group" "selected" {
  name = "Allow-All"
}

output "security_group_id" {
  value = data.aws_security_group.selected.id
}


