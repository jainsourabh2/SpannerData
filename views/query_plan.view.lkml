view: query_plan {
  sql_table_name: `spanner_sys.query_plan`
    ;;

  dimension: query_plan__plan_nodes {
    hidden: yes
    sql: ${TABLE}.queryPlan.planNodes ;;
    group_label: "Query Plan"
    group_item_label: "Plan Nodes"
  }

  dimension: query_stats__bytes_returned {
    type: number
    sql: ${TABLE}.queryStats.bytes_returned ;;
    group_label: "Query Stats"
    group_item_label: "Bytes Returned"
  }

  dimension: query_stats__cpu_time {
    type: string
    sql: ${TABLE}.queryStats.cpu_time ;;
    group_label: "Query Stats"
    group_item_label: "CPU Time"
  }

  dimension: query_stats__data_bytes_read {
    type: number
    sql: ${TABLE}.queryStats.data_bytes_read ;;
    group_label: "Query Stats"
    group_item_label: "Data Bytes Read"
  }

  dimension: query_stats__deleted_rows_scanned {
    type: number
    sql: ${TABLE}.queryStats.deleted_rows_scanned ;;
    group_label: "Query Stats"
    group_item_label: "Deleted Rows Scanned"
  }

  dimension: query_stats__elapsed_time {
    type: string
    sql: ${TABLE}.queryStats.elapsed_time ;;
    group_label: "Query Stats"
    group_item_label: "Elapsed Time"
  }

  dimension: query_stats__filesystem_delay_seconds {
    type: string
    sql: ${TABLE}.queryStats.filesystem_delay_seconds ;;
    group_label: "Query Stats"
    group_item_label: "Filesystem Delay Seconds"
  }

  dimension: query_stats__optimizer_statistics_package {
    type: string
    sql: ${TABLE}.queryStats.optimizer_statistics_package ;;
    group_label: "Query Stats"
    group_item_label: "Optimizer Statistics Package"
  }

  dimension: query_stats__optimizer_version {
    type: number
    sql: ${TABLE}.queryStats.optimizer_version ;;
    group_label: "Query Stats"
    group_item_label: "Optimizer Version"
  }

  dimension: query_stats__query_plan_creation_time {
    type: string
    sql: ${TABLE}.queryStats.query_plan_creation_time ;;
    group_label: "Query Stats"
    group_item_label: "Query Plan Creation Time"
  }

  dimension: query_stats__query_text {
    type: string
    sql: ${TABLE}.queryStats.query_text ;;
    group_label: "Query Stats"
    group_item_label: "Query Text"
  }

  dimension: query_stats__remote_server_calls {
    type: string
    sql: ${TABLE}.queryStats.remote_server_calls ;;
    group_label: "Query Stats"
    group_item_label: "Remote Server Calls"
  }

  dimension: query_stats__rows_returned {
    type: number
    sql: ${TABLE}.queryStats.rows_returned ;;
    group_label: "Query Stats"
    group_item_label: "Rows Returned"
  }

  dimension: query_stats__rows_scanned {
    type: number
    sql: ${TABLE}.queryStats.rows_scanned ;;
    group_label: "Query Stats"
    group_item_label: "Rows Scanned"
  }

  dimension: query_stats__runtime_creation_time {
    type: string
    sql: ${TABLE}.queryStats.runtime_creation_time ;;
    group_label: "Query Stats"
    group_item_label: "Runtime Creation Time"
  }

  dimension: query_stats__statistics_load_time {
    type: number
    sql: ${TABLE}.queryStats.statistics_load_time ;;
    group_label: "Query Stats"
    group_item_label: "Statistics Load Time"
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

view: query_plan__query_plan__plan_nodes {
  dimension: child_links {
    hidden: yes
    sql: ${TABLE}.childLinks ;;
  }

  dimension: display_name {
    type: string
    sql: ${TABLE}.displayName ;;
  }

  dimension: execution_stats__cpu_time__total {
    type: number
    sql: ${TABLE}.executionStats.cpu_time.total ;;
    group_label: "Execution Stats CPU Time"
    group_item_label: "Total"
  }

  dimension: execution_stats__cpu_time__unit {
    type: string
    sql: ${TABLE}.executionStats.cpu_time.unit ;;
    group_label: "Execution Stats CPU Time"
    group_item_label: "Unit"
  }

  dimension: execution_stats__deleted_rows__total {
    type: number
    sql: ${TABLE}.executionStats.deleted_rows.total ;;
    group_label: "Execution Stats Deleted Rows"
    group_item_label: "Total"
  }

  dimension: execution_stats__deleted_rows__unit {
    type: string
    sql: ${TABLE}.executionStats.deleted_rows.unit ;;
    group_label: "Execution Stats Deleted Rows"
    group_item_label: "Unit"
  }

  dimension: execution_stats__execution_summary__checkpoint_time {
    type: string
    sql: ${TABLE}.executionStats.execution_summary.checkpoint_time ;;
    group_label: "Execution Stats Execution Summary"
    group_item_label: "Checkpoint Time"
  }

  dimension: execution_stats__execution_summary__execution_end_timestamp {
    type: number
    sql: ${TABLE}.executionStats.execution_summary.execution_end_timestamp ;;
    group_label: "Execution Stats Execution Summary"
    group_item_label: "Execution End Timestamp"
  }

  dimension: execution_stats__execution_summary__execution_start_timestamp {
    type: number
    sql: ${TABLE}.executionStats.execution_summary.execution_start_timestamp ;;
    group_label: "Execution Stats Execution Summary"
    group_item_label: "Execution Start Timestamp"
  }

  dimension: execution_stats__execution_summary__num_checkpoints {
    type: number
    sql: ${TABLE}.executionStats.execution_summary.num_checkpoints ;;
    group_label: "Execution Stats Execution Summary"
    group_item_label: "Num Checkpoints"
  }

  dimension: execution_stats__execution_summary__num_executions {
    type: number
    sql: ${TABLE}.executionStats.execution_summary.num_executions ;;
    group_label: "Execution Stats Execution Summary"
    group_item_label: "Num Executions"
  }

  dimension: execution_stats__filesystem_delay_seconds__total {
    type: number
    sql: ${TABLE}.executionStats.filesystem_delay_seconds.total ;;
    group_label: "Execution Stats Filesystem Delay Seconds"
    group_item_label: "Total"
  }

  dimension: execution_stats__filesystem_delay_seconds__unit {
    type: string
    sql: ${TABLE}.executionStats.filesystem_delay_seconds.unit ;;
    group_label: "Execution Stats Filesystem Delay Seconds"
    group_item_label: "Unit"
  }

  dimension: execution_stats__filtered_rows__total {
    type: number
    sql: ${TABLE}.executionStats.filtered_rows.total ;;
    group_label: "Execution Stats Filtered Rows"
    group_item_label: "Total"
  }

  dimension: execution_stats__filtered_rows__unit {
    type: string
    sql: ${TABLE}.executionStats.filtered_rows.unit ;;
    group_label: "Execution Stats Filtered Rows"
    group_item_label: "Unit"
  }

  dimension: execution_stats__latency__total {
    type: number
    sql: ${TABLE}.executionStats.latency.total ;;
    group_label: "Execution Stats Latency"
    group_item_label: "Total"
  }

  dimension: execution_stats__latency__unit {
    type: string
    sql: ${TABLE}.executionStats.latency.unit ;;
    group_label: "Execution Stats Latency"
    group_item_label: "Unit"
  }

  dimension: execution_stats__remote_calls__total {
    type: number
    sql: ${TABLE}.executionStats.remote_calls.total ;;
    group_label: "Execution Stats Remote Calls"
    group_item_label: "Total"
  }

  dimension: execution_stats__remote_calls__unit {
    type: string
    sql: ${TABLE}.executionStats.remote_calls.unit ;;
    group_label: "Execution Stats Remote Calls"
    group_item_label: "Unit"
  }

  dimension: execution_stats__rows__total {
    type: number
    sql: ${TABLE}.executionStats.`rows`.total ;;
    group_label: "Execution Stats Rows"
    group_item_label: "Total"
  }

  dimension: execution_stats__rows__unit {
    type: string
    sql: ${TABLE}.executionStats.`rows`.unit ;;
    group_label: "Execution Stats Rows"
    group_item_label: "Unit"
  }

  dimension: execution_stats__scanned_rows__total {
    type: number
    sql: ${TABLE}.executionStats.scanned_rows.total ;;
    group_label: "Execution Stats Scanned Rows"
    group_item_label: "Total"
  }

  dimension: execution_stats__scanned_rows__unit {
    type: string
    sql: ${TABLE}.executionStats.scanned_rows.unit ;;
    group_label: "Execution Stats Scanned Rows"
    group_item_label: "Unit"
  }

  dimension: index {
    type: number
    sql: ${TABLE}.index ;;
  }

  dimension: kind {
    type: string
    sql: ${TABLE}.kind ;;
  }

  dimension: metadata__call_type {
    type: string
    sql: ${TABLE}.metadata.call_type ;;
    group_label: "Metadata"
    group_item_label: "Call Type"
  }

  dimension: metadata__scan_target {
    type: string
    sql: ${TABLE}.metadata.scan_target ;;
    group_label: "Metadata"
    group_item_label: "Scan Target"
  }

  dimension: metadata__scan_type {
    type: string
    sql: ${TABLE}.metadata.scan_type ;;
    group_label: "Metadata"
    group_item_label: "Scan Type"
  }

  dimension: metadata__subquery_cluster_node {
    type: number
    sql: ${TABLE}.metadata.subquery_cluster_node ;;
    group_label: "Metadata"
    group_item_label: "Subquery Cluster Node"
  }

  dimension: short_representation__description {
    type: string
    sql: ${TABLE}.shortRepresentation.description ;;
    group_label: "Short Representation"
    group_item_label: "Description"
  }
}

view: query_plan__query_plan__plan_nodes__child_links {
  dimension: child_index {
    type: number
    sql: ${TABLE}.childIndex ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: variable {
    type: string
    sql: ${TABLE}.variable ;;
  }
}
