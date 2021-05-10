# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
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

view: txn_stats_top_10minute {
  sql_table_name: `dr-poc-305406.spanner_sys.txn_stats_top_10minute`
    ;;

  measure: avg_bytes {
    type: average
    sql: ${TABLE}.avg_bytes ;;
  }

  measure: avg_commit_latency_seconds {
    type: average
    sql: ${TABLE}.avg_commit_latency_seconds ;;
  }

  measure: avg_participants {
    type: average
    sql: ${TABLE}.avg_participants ;;
  }

  measure: avg_total_latency_seconds {
    type: average
    sql: ${TABLE}.avg_total_latency_seconds ;;
  }

  measure: commit_abort_count {
    type: sum
    sql: ${TABLE}.commit_abort_count ;;
  }

  measure: commit_attempt_count {
    type: sum
    sql: ${TABLE}.commit_attempt_count ;;
  }

  measure: commit_failed_precondition_count {
    type: sum
    sql: ${TABLE}.commit_failed_precondition_count ;;
  }

  dimension: fprint {
    type: number
    sql: ${TABLE}.fprint ;;
  }

  dimension_group: interval_end {
    type: time
    timeframes: [
      raw,
      time,
      hour,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.interval_end ;;
  }

  dimension: read_columns {
    hidden: yes
    sql: ${TABLE}.read_columns ;;
  }

  dimension: write_constructive_columns {
    hidden: yes
    sql: ${TABLE}.write_constructive_columns ;;
  }

  dimension: write_delete_tables {
    hidden: yes
    sql: ${TABLE}.write_delete_tables ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

view: txn_stats_top_10minute__read_columns {
  dimension: txn_stats_top_10minute__read_columns {
    type: string
    sql: txn_stats_top_10minute__read_columns ;;
  }
}

view: txn_stats_top_10minute__write_delete_tables {
  dimension: txn_stats_top_10minute__write_delete_tables {
    type: string
    sql: txn_stats_top_10minute__write_delete_tables ;;
  }
}

view: txn_stats_top_10minute__write_constructive_columns {
  dimension: txn_stats_top_10minute__write_constructive_columns {
    type: string
    sql: txn_stats_top_10minute__write_constructive_columns ;;
  }
}
