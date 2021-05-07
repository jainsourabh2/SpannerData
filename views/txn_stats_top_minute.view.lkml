view: txn_stats_top_minute {
  sql_table_name: `spanner_sys.txn_stats_top_minute`
    ;;

  dimension: avg_bytes {
    type: number
    sql: ${TABLE}.avg_bytes ;;
  }

  dimension: avg_commit_latency_seconds {
    type: number
    sql: ${TABLE}.avg_commit_latency_seconds ;;
  }

  dimension: avg_participants {
    type: number
    sql: ${TABLE}.avg_participants ;;
  }

  dimension: avg_total_latency_seconds {
    type: number
    sql: ${TABLE}.avg_total_latency_seconds ;;
  }

  dimension: commit_abort_count {
    type: number
    sql: ${TABLE}.commit_abort_count ;;
  }

  dimension: commit_attempt_count {
    type: number
    sql: ${TABLE}.commit_attempt_count ;;
  }

  dimension: commit_failed_precondition_count {
    type: number
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

view: txn_stats_top_minute__read_columns {
  dimension: txn_stats_top_minute__read_columns {
    type: string
    sql: txn_stats_top_minute__read_columns ;;
  }
}

view: txn_stats_top_minute__write_delete_tables {
  dimension: txn_stats_top_minute__write_delete_tables {
    type: string
    sql: txn_stats_top_minute__write_delete_tables ;;
  }
}

view: txn_stats_top_minute__write_constructive_columns {
  dimension: txn_stats_top_minute__write_constructive_columns {
    type: string
    sql: txn_stats_top_minute__write_constructive_columns ;;
  }
}
