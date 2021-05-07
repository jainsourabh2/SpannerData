view: lock_stats_top_10_minute {
  sql_table_name: `spanner_sys.LOCK_STATS_TOP_10MINUTE`
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

  dimension: lock_wait_seconds {
    type: number
    sql: ${TABLE}.LOCK_WAIT_SECONDS ;;
  }

  dimension: row_range_start_key {
    type: string
    sql: ${TABLE}.ROW_RANGE_START_KEY ;;
  }

  dimension: sample_lock_requests {
    hidden: yes
    sql: ${TABLE}.SAMPLE_LOCK_REQUESTS ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

view: lock_stats_top_10_minute__sample_lock_requests {
  dimension: column {
    type: string
    sql: ${TABLE}.column ;;
  }

  dimension: lock_mode {
    type: string
    sql: ${TABLE}.lock_mode ;;
  }
}
