resource "databricks_feature_engineering_feature" "feature_engineering_features" {
  for_each = var.feature_engineering_features

  full_name         = each.value.full_name
  function          = each.value.function
  source            = each.value.source
  description       = each.value.description
  entities          = each.value.entities
  filter_condition  = each.value.filter_condition
  inputs            = each.value.inputs
  lineage_context   = each.value.lineage_context
  provider_config   = each.value.provider_config
  time_window       = each.value.time_window
  timeseries_column = each.value.timeseries_column
}

