# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view

view: Lock_Stats_10Minute_Interval {
  derived_table: {
   sql: SELECT
            interval_end AS INTERVAL_END
          ,CAST(ROW_RANGE_START_KEY AS STRING ) AS ROW_RANGE_START_KEY
          ,MIN(LOCK_WAIT_SECONDS) AS LOCK_WAIT_SECONDS
          ,STRING_AGG(CONCAT(sample_locks.lock_mode,"-",sample_locks.column)) AS lock
        FROM `dr-poc-305406.spanner_sys.LOCK_STATS_TOP_10MINUTE`,
        UNNEST(SAMPLE_LOCK_REQUESTS) AS sample_locks
        GROUP BY interval_end,ROW_RANGE_START_KEY ;;
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
    sql: ${TABLE}.INTERVAL_END ;;
  }

  dimension: row_range_start_key {
    type: string
    sql: CAST(${TABLE}.ROW_RANGE_START_KEY AS STRING) ;;
  }

  dimension: lock {
    hidden: yes
    sql: ${TABLE}.lock ;;
  }

  measure: lock_wait_seconds {
    type: sum
    sql: ${TABLE}.LOCK_WAIT_SECONDS ;;
  }

}

# view: lock_stats_top_10_minute__sample_lock_requests {
#   dimension: column {
#     type: string
#     sql: ${TABLE}.column ;;
#   }

#   dimension: lock_mode {
#     type: string
#     sql: ${TABLE}.lock_mode ;;
#   }
# }
