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

explore: QueryStats_Minute_Interval {}

# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
explore: lock_stats_top_10_minute {

  join: lock_stats_top_10_minute__sample_lock_requests {
    view_label: "Lock Stats Top 10 Minute: Sample Lock Requests"
    sql: LEFT JOIN UNNEST(${lock_stats_top_10_minute.sample_lock_requests}) AS  lock_stats_top_10_minute__sample_lock_requests WITH OFFSET AS lock_stats_top_10_minute_sample_lock_requests_with_offset;;
    relationship: one_to_many
  }
}
