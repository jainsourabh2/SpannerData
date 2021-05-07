view: read_stats_top_10_minute {
  sql_table_name: `spanner_sys.READ_STATS_TOP_10MINUTE`
    ;;

  dimension: avg_bytes {
    type: number
    sql: ${TABLE}.AVG_BYTES ;;
  }

  dimension: avg_client_wait_seconds {
    type: number
    sql: ${TABLE}.AVG_CLIENT_WAIT_SECONDS ;;
  }

  dimension: avg_cpu_seconds {
    type: number
    sql: ${TABLE}.AVG_CPU_SECONDS ;;
  }

  dimension: avg_leader_refresh_delay_seconds {
    type: number
    sql: ${TABLE}.AVG_LEADER_REFRESH_DELAY_SECONDS ;;
  }

  dimension: avg_locking_delay_seconds {
    type: number
    sql: ${TABLE}.AVG_LOCKING_DELAY_SECONDS ;;
  }

  dimension: avg_rows {
    type: number
    sql: ${TABLE}.AVG_ROWS ;;
  }

  dimension: execution_count {
    type: number
    sql: ${TABLE}.EXECUTION_COUNT ;;
  }

  dimension: fprint {
    type: number
    sql: ${TABLE}.FPRINT ;;
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

  dimension: read_columns {
    hidden: yes
    sql: ${TABLE}.READ_COLUMNS ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

view: read_stats_top_10_minute__read_columns {
  dimension: read_stats_top_10_minute__read_columns {
    type: string
    sql: read_stats_top_10_minute__read_columns ;;
  }
}
