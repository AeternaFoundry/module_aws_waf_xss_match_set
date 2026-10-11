resource "aws_waf_xss_match_set" "waf_xss_match_sets" {
  for_each = var.waf_xss_match_sets

  name = each.value.name

  dynamic "xss_match_tuples" {
    for_each = each.value.xss_match_tuples != null ? each.value.xss_match_tuples : []
    content {
      field_to_match {
        data = xss_match_tuples.value.field_to_match.data
        type = xss_match_tuples.value.field_to_match.type
      }
      text_transformation = xss_match_tuples.value.text_transformation
    }
  }
}

