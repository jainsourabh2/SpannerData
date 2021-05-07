view: lock_stats_total_minute {
  sql_table_name: `spanner_sys.LOCK_STATS_TOTAL_MINUTE`
    ;;

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

  dimension: total_lock_wait_seconds {
    type: number
    sql: ${TABLE}.TOTAL_LOCK_WAIT_SECONDS ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
