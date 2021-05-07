view: QueryStats_10_Minute_Interval {
  sql_table_name: `spanner_sys.query_stats_top_10minute`
    ;;

  dimension: all_failed_execution_count {
    type: number
    sql: ${TABLE}.all_failed_execution_count ;;
  }

  dimension: avg_bytes {
    type: number
    sql: ${TABLE}.avg_bytes ;;
  }

  dimension: avg_cpu_seconds {
    type: number
    sql: ${TABLE}.avg_cpu_seconds ;;
  }

  dimension: avg_latency_seconds {
    type: number
    sql: ${TABLE}.avg_latency_seconds ;;
  }

  dimension: avg_rows {
    type: number
    sql: ${TABLE}.avg_rows ;;
  }

  dimension: avg_rows_scanned {
    type: number
    sql: ${TABLE}.avg_rows_scanned ;;
  }

  dimension: cancelled_or_disconnected_execution_count {
    type: number
    sql: ${TABLE}.cancelled_or_disconnected_execution_count ;;
  }

  dimension: execution_count {
    type: number
    sql: ${TABLE}.execution_count ;;
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

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }

  dimension: text_fingerprint {
    type: number
    sql: ${TABLE}.text_fingerprint ;;
  }

  dimension: text_truncated {
    type: yesno
    sql: ${TABLE}.text_truncated ;;
  }

  dimension: timed_out_execution_count {
    type: number
    sql: ${TABLE}.timed_out_execution_count ;;
  }

  # dimension: all_failed_avg_latency_seconds {
  #   type: number
  #   sql: ${TABLE}.all_failed_avg_latency_seconds ;;
  # }

  measure: all_failed_avg_latency_seconds {
    type: sum
    label: "All Failed Avg Latency Seconds"
    sql: ${TABLE}.all_failed_avg_latency_seconds ;;
  }

  measure: count {
    type: count
    label: "Total Count"
    drill_fields: []
  }
}
