# Creating the Route53 Hosted Zone Record.
resource "aws_route53_record" "expense" {
  for_each = aws_instance.expense_instances
  zone_id  = data.aws_route53_zone.hosted_zone_id.zone_id
  name     = each.key == "frontend-prod" ? var.record_name : "${each.key}.expense.${var.record_name}"
  type    = "A"
  ttl     = 1
  records = startswith(each.key, "frontend") ? [each.value.public_ip] : [each.value.private_ip]

  # If the R53 records are already exists, then it will overwrite the existing records.
  allow_overwrite = true
}
