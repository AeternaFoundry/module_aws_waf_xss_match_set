output "waf_xss_match_sets_id" {
  description = "Map of id values across all waf_xss_match_sets, keyed the same as var.waf_xss_match_sets"
  value       = { for k, v in aws_waf_xss_match_set.waf_xss_match_sets : k => v.id if v.id != null && length(v.id) > 0 }
}
output "waf_xss_match_sets_arn" {
  description = "Map of arn values across all waf_xss_match_sets, keyed the same as var.waf_xss_match_sets"
  value       = { for k, v in aws_waf_xss_match_set.waf_xss_match_sets : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "waf_xss_match_sets_name" {
  description = "Map of name values across all waf_xss_match_sets, keyed the same as var.waf_xss_match_sets"
  value       = { for k, v in aws_waf_xss_match_set.waf_xss_match_sets : k => v.name if v.name != null && length(v.name) > 0 }
}
output "waf_xss_match_sets_xss_match_tuples" {
  description = "Map of xss_match_tuples values across all waf_xss_match_sets, keyed the same as var.waf_xss_match_sets"
  value       = { for k, v in aws_waf_xss_match_set.waf_xss_match_sets : k => v.xss_match_tuples if v.xss_match_tuples != null && length(v.xss_match_tuples) > 0 }
}

