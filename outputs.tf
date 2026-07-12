output "data_factory_pipelines_activities_json" {
  description = "Map of activities_json values across all data_factory_pipelines, keyed the same as var.data_factory_pipelines"
  value       = { for k, v in azurerm_data_factory_pipeline.data_factory_pipelines : k => v.activities_json }
}
output "data_factory_pipelines_annotations" {
  description = "Map of annotations values across all data_factory_pipelines, keyed the same as var.data_factory_pipelines"
  value       = { for k, v in azurerm_data_factory_pipeline.data_factory_pipelines : k => v.annotations }
}
output "data_factory_pipelines_concurrency" {
  description = "Map of concurrency values across all data_factory_pipelines, keyed the same as var.data_factory_pipelines"
  value       = { for k, v in azurerm_data_factory_pipeline.data_factory_pipelines : k => v.concurrency }
}
output "data_factory_pipelines_data_factory_id" {
  description = "Map of data_factory_id values across all data_factory_pipelines, keyed the same as var.data_factory_pipelines"
  value       = { for k, v in azurerm_data_factory_pipeline.data_factory_pipelines : k => v.data_factory_id }
}
output "data_factory_pipelines_description" {
  description = "Map of description values across all data_factory_pipelines, keyed the same as var.data_factory_pipelines"
  value       = { for k, v in azurerm_data_factory_pipeline.data_factory_pipelines : k => v.description }
}
output "data_factory_pipelines_folder" {
  description = "Map of folder values across all data_factory_pipelines, keyed the same as var.data_factory_pipelines"
  value       = { for k, v in azurerm_data_factory_pipeline.data_factory_pipelines : k => v.folder }
}
output "data_factory_pipelines_moniter_metrics_after_duration" {
  description = "Map of moniter_metrics_after_duration values across all data_factory_pipelines, keyed the same as var.data_factory_pipelines"
  value       = { for k, v in azurerm_data_factory_pipeline.data_factory_pipelines : k => v.moniter_metrics_after_duration }
}
output "data_factory_pipelines_name" {
  description = "Map of name values across all data_factory_pipelines, keyed the same as var.data_factory_pipelines"
  value       = { for k, v in azurerm_data_factory_pipeline.data_factory_pipelines : k => v.name }
}
output "data_factory_pipelines_parameters" {
  description = "Map of parameters values across all data_factory_pipelines, keyed the same as var.data_factory_pipelines"
  value       = { for k, v in azurerm_data_factory_pipeline.data_factory_pipelines : k => v.parameters }
}
output "data_factory_pipelines_variables" {
  description = "Map of variables values across all data_factory_pipelines, keyed the same as var.data_factory_pipelines"
  value       = { for k, v in azurerm_data_factory_pipeline.data_factory_pipelines : k => v.variables }
}

