connection: "test"

# include all the views
include: "/views/**/*.view"

datagroup: spanner_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: spanner_default_datagroup

explore: lock_stats_top_10_minute {
  join: lock_stats_top_10_minute__sample_lock_requests {
    view_label: "Lock Stats Top 10 Minute: Sample Lock Requests"
    sql: LEFT JOIN UNNEST(${lock_stats_top_10_minute.sample_lock_requests}) as lock_stats_top_10_minute__sample_lock_requests ;;
    relationship: one_to_many
  }
}

explore: lock_stats_top_hour {
  join: lock_stats_top_hour__sample_lock_requests {
    view_label: "Lock Stats Top Hour: Sample Lock Requests"
    sql: LEFT JOIN UNNEST(${lock_stats_top_hour.sample_lock_requests}) as lock_stats_top_hour__sample_lock_requests ;;
    relationship: one_to_many
  }
}

explore: lock_stats_top_minute {
  join: lock_stats_top_minute__sample_lock_requests {
    view_label: "Lock Stats Top Minute: Sample Lock Requests"
    sql: LEFT JOIN UNNEST(${lock_stats_top_minute.sample_lock_requests}) as lock_stats_top_minute__sample_lock_requests ;;
    relationship: one_to_many
  }
}

explore: lock_stats_total_10_minute {}

explore: lock_stats_total_hour {}

explore: lock_stats_total_minute {}

explore: oldest_active_queries {}

explore: query_stats_top_10minute {}

explore: query_stats_top_hour {}

explore: query_stats_top_minute {}

explore: query_stats_total_10minute {}

explore: query_stats_total_hour {}

explore: query_stats_total_minute {}

explore: read_stats_top_10_minute {
  join: read_stats_top_10_minute__read_columns {
    view_label: "Read Stats Top 10 Minute: Read Columns"
    sql: LEFT JOIN UNNEST(${read_stats_top_10_minute.read_columns}) as read_stats_top_10_minute__read_columns ;;
    relationship: one_to_many
  }
}

explore: read_stats_top_hour {
  join: read_stats_top_hour__read_columns {
    view_label: "Read Stats Top Hour: Read Columns"
    sql: LEFT JOIN UNNEST(${read_stats_top_hour.read_columns}) as read_stats_top_hour__read_columns ;;
    relationship: one_to_many
  }
}

explore: read_stats_top_minute {
  join: read_stats_top_minute__read_columns {
    view_label: "Read Stats Top Minute: Read Columns"
    sql: LEFT JOIN UNNEST(${read_stats_top_minute.read_columns}) as read_stats_top_minute__read_columns ;;
    relationship: one_to_many
  }
}

explore: read_stats_total_10_minute {}

explore: read_stats_total_hour {}

explore: read_stats_total_minute {}

explore: txn_stats_top_10minute {
  join: txn_stats_top_10minute__read_columns {
    view_label: "Txn Stats Top 10minute: Read Columns"
    sql: LEFT JOIN UNNEST(${txn_stats_top_10minute.read_columns}) as txn_stats_top_10minute__read_columns ;;
    relationship: one_to_many
  }

  join: txn_stats_top_10minute__write_delete_tables {
    view_label: "Txn Stats Top 10minute: Write Delete Tables"
    sql: LEFT JOIN UNNEST(${txn_stats_top_10minute.write_delete_tables}) as txn_stats_top_10minute__write_delete_tables ;;
    relationship: one_to_many
  }

  join: txn_stats_top_10minute__write_constructive_columns {
    view_label: "Txn Stats Top 10minute: Write Constructive Columns"
    sql: LEFT JOIN UNNEST(${txn_stats_top_10minute.write_constructive_columns}) as txn_stats_top_10minute__write_constructive_columns ;;
    relationship: one_to_many
  }
}

explore: txn_stats_top_hour {
  join: txn_stats_top_hour__read_columns {
    view_label: "Txn Stats Top Hour: Read Columns"
    sql: LEFT JOIN UNNEST(${txn_stats_top_hour.read_columns}) as txn_stats_top_hour__read_columns ;;
    relationship: one_to_many
  }

  join: txn_stats_top_hour__write_delete_tables {
    view_label: "Txn Stats Top Hour: Write Delete Tables"
    sql: LEFT JOIN UNNEST(${txn_stats_top_hour.write_delete_tables}) as txn_stats_top_hour__write_delete_tables ;;
    relationship: one_to_many
  }

  join: txn_stats_top_hour__write_constructive_columns {
    view_label: "Txn Stats Top Hour: Write Constructive Columns"
    sql: LEFT JOIN UNNEST(${txn_stats_top_hour.write_constructive_columns}) as txn_stats_top_hour__write_constructive_columns ;;
    relationship: one_to_many
  }
}

explore: txn_stats_top_minute {
  join: txn_stats_top_minute__read_columns {
    view_label: "Txn Stats Top Minute: Read Columns"
    sql: LEFT JOIN UNNEST(${txn_stats_top_minute.read_columns}) as txn_stats_top_minute__read_columns ;;
    relationship: one_to_many
  }

  join: txn_stats_top_minute__write_delete_tables {
    view_label: "Txn Stats Top Minute: Write Delete Tables"
    sql: LEFT JOIN UNNEST(${txn_stats_top_minute.write_delete_tables}) as txn_stats_top_minute__write_delete_tables ;;
    relationship: one_to_many
  }

  join: txn_stats_top_minute__write_constructive_columns {
    view_label: "Txn Stats Top Minute: Write Constructive Columns"
    sql: LEFT JOIN UNNEST(${txn_stats_top_minute.write_constructive_columns}) as txn_stats_top_minute__write_constructive_columns ;;
    relationship: one_to_many
  }
}

explore: txn_stats_total_10_minute {}

explore: txn_stats_total_hour {}

explore: txn_stats_total_minute {}
