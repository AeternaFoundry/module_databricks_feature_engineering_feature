output "feature_engineering_features_catalog_name" {
  description = "Map of catalog_name values across all feature_engineering_features, keyed the same as var.feature_engineering_features except keys with no catalog_name are omitted"
  value       = { for k, v in databricks_feature_engineering_feature.feature_engineering_features : k => v.catalog_name if v.catalog_name != null && length(v.catalog_name) > 0 }
}
output "feature_engineering_features_created_at" {
  description = "Map of created_at values across all feature_engineering_features, keyed the same as var.feature_engineering_features except keys with no created_at are omitted"
  value       = { for k, v in databricks_feature_engineering_feature.feature_engineering_features : k => v.created_at if v.created_at != null && length(v.created_at) > 0 }
}
output "feature_engineering_features_created_by" {
  description = "Map of created_by values across all feature_engineering_features, keyed the same as var.feature_engineering_features except keys with no created_by are omitted"
  value       = { for k, v in databricks_feature_engineering_feature.feature_engineering_features : k => v.created_by if v.created_by != null && length(v.created_by) > 0 }
}
output "feature_engineering_features_description" {
  description = "Map of description values across all feature_engineering_features, keyed the same as var.feature_engineering_features except keys with no description are omitted"
  value       = { for k, v in databricks_feature_engineering_feature.feature_engineering_features : k => v.description if v.description != null && length(v.description) > 0 }
}
output "feature_engineering_features_entities" {
  description = "Map of entities values across all feature_engineering_features, keyed the same as var.feature_engineering_features except keys with no entities are omitted"
  value       = { for k, v in databricks_feature_engineering_feature.feature_engineering_features : k => v.entities if v.entities != null && length(v.entities) > 0 }
}
output "feature_engineering_features_filter_condition" {
  description = "Map of filter_condition values across all feature_engineering_features, keyed the same as var.feature_engineering_features except keys with no filter_condition are omitted"
  value       = { for k, v in databricks_feature_engineering_feature.feature_engineering_features : k => v.filter_condition if v.filter_condition != null && length(v.filter_condition) > 0 }
}
output "feature_engineering_features_full_name" {
  description = "Map of full_name values across all feature_engineering_features, keyed the same as var.feature_engineering_features except keys with no full_name are omitted"
  value       = { for k, v in databricks_feature_engineering_feature.feature_engineering_features : k => v.full_name if v.full_name != null && length(v.full_name) > 0 }
}
output "feature_engineering_features_function" {
  description = "Map of function values across all feature_engineering_features, keyed the same as var.feature_engineering_features except keys with no function are omitted"
  value       = { for k, v in databricks_feature_engineering_feature.feature_engineering_features : k => v.function if v.function != null && length(v.function) > 0 }
}
output "feature_engineering_features_inputs" {
  description = "Map of inputs values across all feature_engineering_features, keyed the same as var.feature_engineering_features except keys with no inputs are omitted"
  value       = { for k, v in databricks_feature_engineering_feature.feature_engineering_features : k => v.inputs if v.inputs != null && length(v.inputs) > 0 }
}
output "feature_engineering_features_lineage_context" {
  description = "Map of lineage_context values across all feature_engineering_features, keyed the same as var.feature_engineering_features except keys with no lineage_context are omitted"
  value       = { for k, v in databricks_feature_engineering_feature.feature_engineering_features : k => v.lineage_context if v.lineage_context != null && length(v.lineage_context) > 0 }
}
output "feature_engineering_features_name" {
  description = "Map of name values across all feature_engineering_features, keyed the same as var.feature_engineering_features except keys with no name are omitted"
  value       = { for k, v in databricks_feature_engineering_feature.feature_engineering_features : k => v.name if v.name != null && length(v.name) > 0 }
}
output "feature_engineering_features_provider_config" {
  description = "Map of provider_config values across all feature_engineering_features, keyed the same as var.feature_engineering_features except keys with no provider_config are omitted"
  value       = { for k, v in databricks_feature_engineering_feature.feature_engineering_features : k => v.provider_config if v.provider_config != null && length(v.provider_config) > 0 }
}
output "feature_engineering_features_schema_name" {
  description = "Map of schema_name values across all feature_engineering_features, keyed the same as var.feature_engineering_features except keys with no schema_name are omitted"
  value       = { for k, v in databricks_feature_engineering_feature.feature_engineering_features : k => v.schema_name if v.schema_name != null && length(v.schema_name) > 0 }
}
output "feature_engineering_features_source" {
  description = "Map of source values across all feature_engineering_features, keyed the same as var.feature_engineering_features except keys with no source are omitted"
  value       = { for k, v in databricks_feature_engineering_feature.feature_engineering_features : k => v.source if v.source != null && length(v.source) > 0 }
}
output "feature_engineering_features_time_window" {
  description = "Map of time_window values across all feature_engineering_features, keyed the same as var.feature_engineering_features except keys with no time_window are omitted"
  value       = { for k, v in databricks_feature_engineering_feature.feature_engineering_features : k => v.time_window if v.time_window != null && length(v.time_window) > 0 }
}
output "feature_engineering_features_timeseries_column" {
  description = "Map of timeseries_column values across all feature_engineering_features, keyed the same as var.feature_engineering_features except keys with no timeseries_column are omitted"
  value       = { for k, v in databricks_feature_engineering_feature.feature_engineering_features : k => v.timeseries_column if v.timeseries_column != null && length(v.timeseries_column) > 0 }
}

