output "data_factory_pipelines" {
  description = "All data_factory_pipeline resources"
  value       = azurerm_data_factory_pipeline.data_factory_pipelines
}
output "data_factory_pipelines_activities_json" {
  description = "List of activities_json values across all data_factory_pipelines"
  value       = [for k, v in azurerm_data_factory_pipeline.data_factory_pipelines : v.activities_json]
}
output "data_factory_pipelines_annotations" {
  description = "List of annotations values across all data_factory_pipelines"
  value       = [for k, v in azurerm_data_factory_pipeline.data_factory_pipelines : v.annotations]
}
output "data_factory_pipelines_concurrency" {
  description = "List of concurrency values across all data_factory_pipelines"
  value       = [for k, v in azurerm_data_factory_pipeline.data_factory_pipelines : v.concurrency]
}
output "data_factory_pipelines_data_factory_id" {
  description = "List of data_factory_id values across all data_factory_pipelines"
  value       = [for k, v in azurerm_data_factory_pipeline.data_factory_pipelines : v.data_factory_id]
}
output "data_factory_pipelines_description" {
  description = "List of description values across all data_factory_pipelines"
  value       = [for k, v in azurerm_data_factory_pipeline.data_factory_pipelines : v.description]
}
output "data_factory_pipelines_folder" {
  description = "List of folder values across all data_factory_pipelines"
  value       = [for k, v in azurerm_data_factory_pipeline.data_factory_pipelines : v.folder]
}
output "data_factory_pipelines_moniter_metrics_after_duration" {
  description = "List of moniter_metrics_after_duration values across all data_factory_pipelines"
  value       = [for k, v in azurerm_data_factory_pipeline.data_factory_pipelines : v.moniter_metrics_after_duration]
}
output "data_factory_pipelines_name" {
  description = "List of name values across all data_factory_pipelines"
  value       = [for k, v in azurerm_data_factory_pipeline.data_factory_pipelines : v.name]
}
output "data_factory_pipelines_parameters" {
  description = "List of parameters values across all data_factory_pipelines"
  value       = [for k, v in azurerm_data_factory_pipeline.data_factory_pipelines : v.parameters]
}
output "data_factory_pipelines_variables" {
  description = "List of variables values across all data_factory_pipelines"
  value       = [for k, v in azurerm_data_factory_pipeline.data_factory_pipelines : v.variables]
}

