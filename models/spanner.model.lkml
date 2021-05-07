connection: "test"

# include all the views
include: "/views/**/*.view"

datagroup: spanner_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: spanner_default_datagroup

# explore: ga_sessions_hits {
#   join: evergent_subscription_data {
#     type: inner
#     relationship: one_to_one
#     sql_on: ${evergent_subscription_data.cp_customer_id}=${ga_sessions_hits.cp_customer_id} ;;
#   }
#   join: activations {
#     view_label: "Evergent Subscription Data"
#     type: left_outer
#     relationship: one_to_one
#     sql_on: ${activations.key} = ${evergent_subscription_data.key} ;;
#   }
#   join: avs_data_all {
#     type: inner
#     relationship: one_to_one
#     sql_on: ${avs_data_all.content_id}=${ga_sessions_hits.content_id} ;;
#   }
# }

explore: query_stats_top_10minute {}

explore: query_stats_top_hour {}

explore: query_stats_top_minute {}

explore: query_stats_total_10minute {}

explore: query_stats_total_hour {}

explore: query_stats_total_minute {}
