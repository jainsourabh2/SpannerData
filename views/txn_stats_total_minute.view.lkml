view: txn_stats_total_minute {
  sql_table_name: `spanner_sys.TXN_STATS_TOTAL_MINUTE`
    ;;

  dimension: avg_bytes {
    type: number
    sql: ${TABLE}.AVG_BYTES ;;
  }

  dimension: avg_commit_latency_seconds {
    type: number
    sql: ${TABLE}.AVG_COMMIT_LATENCY_SECONDS ;;
  }

  dimension: avg_participants {
    type: number
    sql: ${TABLE}.AVG_PARTICIPANTS ;;
  }

  dimension: avg_total_latency_seconds {
    type: number
    sql: ${TABLE}.AVG_TOTAL_LATENCY_SECONDS ;;
  }

  dimension: commit_abort_count {
    type: number
    sql: ${TABLE}.COMMIT_ABORT_COUNT ;;
  }

  dimension: commit_attempt_count {
    type: number
    sql: ${TABLE}.COMMIT_ATTEMPT_COUNT ;;
  }

  dimension: commit_failed_precondition_count {
    type: number
    sql: ${TABLE}.COMMIT_FAILED_PRECONDITION_COUNT ;;
  }

  dimension: commit_retry_count {
    type: number
    sql: ${TABLE}.COMMIT_RETRY_COUNT ;;
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
    sql: ${TABLE}.INTERVAL_END ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
