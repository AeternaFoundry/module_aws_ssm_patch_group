output "ssm_patch_groups_id" {
  description = "Map of id values across all ssm_patch_groups, keyed the same as var.ssm_patch_groups"
  value       = { for k, v in aws_ssm_patch_group.ssm_patch_groups : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ssm_patch_groups_baseline_id" {
  description = "Map of baseline_id values across all ssm_patch_groups, keyed the same as var.ssm_patch_groups"
  value       = { for k, v in aws_ssm_patch_group.ssm_patch_groups : k => v.baseline_id if v.baseline_id != null && length(v.baseline_id) > 0 }
}
output "ssm_patch_groups_patch_group" {
  description = "Map of patch_group values across all ssm_patch_groups, keyed the same as var.ssm_patch_groups"
  value       = { for k, v in aws_ssm_patch_group.ssm_patch_groups : k => v.patch_group if v.patch_group != null && length(v.patch_group) > 0 }
}
output "ssm_patch_groups_region" {
  description = "Map of region values across all ssm_patch_groups, keyed the same as var.ssm_patch_groups"
  value       = { for k, v in aws_ssm_patch_group.ssm_patch_groups : k => v.region if v.region != null && length(v.region) > 0 }
}

