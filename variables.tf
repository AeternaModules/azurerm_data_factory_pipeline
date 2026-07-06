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
  # --- Unconfirmed validation candidates, derived from azurerm_data_factory_pipeline's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.DataFactoryPipelineAndTriggerName] !regexp.MustCompile(`^[A-Za-z0-9_][^<>*#.%&:\\+?/]*$`).MatchString(value)
  # path: data_factory_id
  #   source:    [from factories.ValidateFactoryID] !ok
  # path: data_factory_id
  #   source:    [from factories.ValidateFactoryID] err != nil
}

