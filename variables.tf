variable "data_factory_pipelines" {
  description = <<EOT
Map of data_factory_pipelines, attributes below
Required:
    - data_factory_id
    - name
Optional:
    - activities_json
    - annotations
    - concurrency
    - description
    - folder
    - moniter_metrics_after_duration
    - parameters
    - variables
EOT

  type = map(object({
    data_factory_id                = string
    name                           = string
    activities_json                = optional(string)
    annotations                    = optional(list(string))
    concurrency                    = optional(number)
    description                    = optional(string)
    folder                         = optional(string)
    moniter_metrics_after_duration = optional(string)
    parameters                     = optional(map(string))
    variables                      = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.data_factory_pipelines : (
        v.concurrency == null || (v.concurrency >= 1 && v.concurrency <= 50)
      )
    ])
    error_message = "must be between 1 and 50"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_pipelines : (
        v.folder == null || (length(v.folder) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

