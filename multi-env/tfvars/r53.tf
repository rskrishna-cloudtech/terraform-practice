# Creating the Route53 Hosted Zone Record.
resource "aws_route53_record" "expense" {
  count   = length(var.instance_names)
  zone_id = var.zone_id
  name    = var.instance_names[count.index] == "frontend-dev" ? var.record_name : "${var.instance_names[count.index]}.expense.${var.record_name}"
  # name = local.r53_record_name
  type    = "A"
  ttl     = 1
  records = startswith(each.key, "frontend") ? [aws_instance.expense_instances[count.index].public_ip] : [aws_instance.expense_instances[count.index].private_ip]
  # records = var.instance_names[count.index] == "frontend" ? [aws_instance.expense_instances[count.index].public_ip] : [aws_instance.expense_instances[count.index].private_ip]
  # records = local.r53_record_value

  # If the R53 records are already exists, then it will overwrite the existing records.
  allow_overwrite = true
}
