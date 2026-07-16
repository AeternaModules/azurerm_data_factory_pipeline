output "data_factory_pipelines_id" {
  description = "Map of id values across all data_factory_pipelines, keyed the same as var.data_factory_pipelines"
  value       = { for k, v in azurerm_data_factory_pipeline.data_factory_pipelines : k => v.id if v.id != null && length(v.id) > 0 }
}
output "data_factory_pipelines_activities_json" {
  description = "Map of activities_json values across all data_factory_pipelines, keyed the same as var.data_factory_pipelines"
  value       = { for k, v in azurerm_data_factory_pipeline.data_factory_pipelines : k => v.activities_json if v.activities_json != null && length(v.activities_json) > 0 }
}
output "data_factory_pipelines_annotations" {
  description = "Map of annotations values across all data_factory_pipelines, keyed the same as var.data_factory_pipelines"
  value       = { for k, v in azurerm_data_factory_pipeline.data_factory_pipelines : k => v.annotations if v.annotations != null && length(v.annotations) > 0 }
}
output "data_factory_pipelines_concurrency" {
  description = "Map of concurrency values across all data_factory_pipelines, keyed the same as var.data_factory_pipelines"
  value       = { for k, v in azurerm_data_factory_pipeline.data_factory_pipelines : k => v.concurrency if v.concurrency != null }
}
output "data_factory_pipelines_data_factory_id" {
  description = "Map of data_factory_id values across all data_factory_pipelines, keyed the same as var.data_factory_pipelines"
  value       = { for k, v in azurerm_data_factory_pipeline.data_factory_pipelines : k => v.data_factory_id if v.data_factory_id != null && length(v.data_factory_id) > 0 }
}
output "data_factory_pipelines_description" {
  description = "Map of description values across all data_factory_pipelines, keyed the same as var.data_factory_pipelines"
  value       = { for k, v in azurerm_data_factory_pipeline.data_factory_pipelines : k => v.description if v.description != null && length(v.description) > 0 }
}
output "data_factory_pipelines_folder" {
  description = "Map of folder values across all data_factory_pipelines, keyed the same as var.data_factory_pipelines"
  value       = { for k, v in azurerm_data_factory_pipeline.data_factory_pipelines : k => v.folder if v.folder != null && length(v.folder) > 0 }
}
output "data_factory_pipelines_moniter_metrics_after_duration" {
  description = "Map of moniter_metrics_after_duration values across all data_factory_pipelines, keyed the same as var.data_factory_pipelines"
  value       = { for k, v in azurerm_data_factory_pipeline.data_factory_pipelines : k => v.moniter_metrics_after_duration if v.moniter_metrics_after_duration != null && length(v.moniter_metrics_after_duration) > 0 }
}
output "data_factory_pipelines_name" {
  description = "Map of name values across all data_factory_pipelines, keyed the same as var.data_factory_pipelines"
  value       = { for k, v in azurerm_data_factory_pipeline.data_factory_pipelines : k => v.name if v.name != null && length(v.name) > 0 }
}
output "data_factory_pipelines_parameters" {
  description = "Map of parameters values across all data_factory_pipelines, keyed the same as var.data_factory_pipelines"
  value       = { for k, v in azurerm_data_factory_pipeline.data_factory_pipelines : k => v.parameters if v.parameters != null && length(v.parameters) > 0 }
}
output "data_factory_pipelines_variables" {
  description = "Map of variables values across all data_factory_pipelines, keyed the same as var.data_factory_pipelines"
  value       = { for k, v in azurerm_data_factory_pipeline.data_factory_pipelines : k => v.variables if v.variables != null && length(v.variables) > 0 }
}

