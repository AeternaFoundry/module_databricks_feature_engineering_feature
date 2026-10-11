variable "feature_engineering_features" {
  description = <<EOT
Map of feature_engineering_features, attributes below
Required:
    - full_name
    - function
    - source
Optional:
    - description
    - entities
    - filter_condition
    - inputs
    - lineage_context
    - provider_config
    - time_window
    - timeseries_column
EOT

  type = map(object({
    full_name = string
    function = object({
      aggregation_function = optional(object({
        approx_count_distinct = optional(object({
          input       = string
          relative_sd = optional(number)
        }))
        approx_percentile = optional(object({
          accuracy   = optional(number)
          input      = string
          percentile = number
        }))
        avg = optional(object({
          input = string
        }))
        count_function = optional(object({
          input = string
        }))
        first = optional(object({
          input = string
        }))
        first_distinct = optional(object({
          input = string
          n     = number
        }))
        first_n = optional(object({
          input = string
          n     = number
        }))
        last = optional(object({
          input = string
        }))
        last_distinct = optional(object({
          input = string
          n     = number
        }))
        last_n = optional(object({
          input = string
          n     = number
        }))
        max = optional(object({
          input = string
        }))
        min = optional(object({
          input = string
        }))
        stddev_pop = optional(object({
          input = string
        }))
        stddev_samp = optional(object({
          input = string
        }))
        sum = optional(object({
          input = string
        }))
        time_window = optional(object({
          continuous = optional(object({
            offset          = optional(string)
            window_duration = string
          }))
          rolling = optional(object({
            delay           = optional(string)
            window_duration = optional(string)
          }))
          sawtooth = optional(object({
            delay           = optional(string)
            window_duration = optional(string)
          }))
          sliding = optional(object({
            delay           = optional(string)
            offset          = optional(string)
            slide_duration  = string
            window_duration = optional(string)
          }))
          start_time = optional(string)
          tumbling = optional(object({
            delay           = optional(string)
            offset          = optional(string)
            window_duration = string
          }))
        }))
        var_pop = optional(object({
          input = string
        }))
        var_samp = optional(object({
          input = string
        }))
      }))
      column_selection = optional(object({
        column = string
      }))
      custom_udf = optional(object({
        function_path = string
        input_bindings = optional(list(object({
          column    = string
          parameter = string
        })))
      }))
      extra_parameters = optional(list(object({
        key   = string
        value = string
      })))
      function_type = optional(string)
    })
    source = object({
      delta_table_source = optional(object({
        dataframe_schema   = optional(string)
        entity_columns     = optional(list(string))
        filter_condition   = optional(string)
        full_name          = string
        timeseries_column  = optional(string)
        transformation_sql = optional(string)
      }))
      feature_view_source = optional(object({
        feature_references = optional(list(object({
          feature = string
        })))
      }))
      kafka_source = optional(object({
        entity_column_identifiers = optional(list(object({
          variant_expr_path = string
        })))
        filter_condition = optional(string)
        name             = string
        timeseries_column_identifier = optional(object({
          variant_expr_path = string
        }))
      }))
      lateness = optional(object({
        settling_delay = optional(string)
      }))
      request_source = optional(object({
        dataframe_schema = optional(string)
        flat_schema = optional(object({
          fields = list(object({
            data_type = string
            name      = string
          }))
        }))
      }))
      stream_source = optional(object({
        dataframe_schema   = optional(string)
        filter_condition   = optional(string)
        full_name          = string
        transformation_sql = optional(string)
      }))
    })
    description = optional(string)
    entities = optional(list(object({
      name = string
    })))
    filter_condition = optional(string)
    inputs           = optional(list(string))
    lineage_context = optional(object({
      job_context = optional(object({
        job_id     = optional(number)
        job_run_id = optional(number)
      }))
      notebook_id = optional(number)
    }))
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
    time_window = optional(object({
      continuous = optional(object({
        offset          = optional(string)
        window_duration = string
      }))
      rolling = optional(object({
        delay           = optional(string)
        window_duration = optional(string)
      }))
      sawtooth = optional(object({
        delay           = optional(string)
        window_duration = optional(string)
      }))
      sliding = optional(object({
        delay           = optional(string)
        offset          = optional(string)
        slide_duration  = string
        window_duration = optional(string)
      }))
      start_time = optional(string)
      tumbling = optional(object({
        delay           = optional(string)
        offset          = optional(string)
        window_duration = string
      }))
    }))
    timeseries_column = optional(object({
      name = string
    }))
  }))
}

