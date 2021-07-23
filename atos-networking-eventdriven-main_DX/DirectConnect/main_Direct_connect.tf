resource "aws_cloudwatch_metric_alarm" "direct_Connection_State" {
  for_each = toset(var.direct_connect_id)
  alarm_name                = "direct_Connection_State_${each.key}"
  comparison_operator       = "GreaterThanUpperThreshold"
  evaluation_periods        = var.evaluation_periods
  threshold_metric_id       = "query"
  alarm_description         = "direct_Connection_State_${each.key}"
  alarm_actions             = var.alarm_actions
  insufficient_data_actions = []
  metric_query {
    id          = "query"
    expression  = "ANOMALY_DETECTION_BAND(metric,2)"
    label       = "direct_Connection_State_${each.key}"
    return_data = "true"
  }
  metric_query {
    id          = "metric"
    return_data = "true"
    metric {
      metric_name = "ConnectionState"
      namespace   = "AWS/DX"
      period      = var.period
      stat        = "Sum"
      unit        = "Count"
      dimensions = {
        "ConnectionId"  = each.key
      }
    }
  }
}

resource "aws_cloudwatch_metric_alarm" "direct_Connection_Bps_Egress" {
  for_each = toset(var.direct_connect_id)
  alarm_name                = "direct_Connection_Bps_Egress_${each.key}"
  comparison_operator       = "GreaterThanUpperThreshold"
  evaluation_periods        = var.evaluation_periods
  threshold_metric_id       = "query"
  alarm_description         = "direct_Connection_Bps_Egress_${each.key}"
  insufficient_data_actions = []
  alarm_actions             = var.alarm_actions
  metric_query {
    id          = "query"
    expression  = "ANOMALY_DETECTION_BAND(metric,2)"
    label       = "direct_Connection_Bps_Egress_${each.key}"
    return_data = "true"
  }
  metric_query {
    id          = "metric"
    return_data = "true"
    metric {
      metric_name = "ConnectionBpsEgress"
      namespace   = "AWS/DX"
      period      = var.period
      stat        = "Sum"
      unit        = "Count"
      dimensions = {
        "ConnectionId"  = each.key
      }
    }
  }
}

resource "aws_cloudwatch_metric_alarm" "direct_Connection_Bps_Ingress" {
  for_each = toset(var.direct_connect_id)
  alarm_name                = "direct_Connection_Bps_Ingress_${each.key}"
  comparison_operator       = "GreaterThanUpperThreshold"
  evaluation_periods        = var.evaluation_periods
  threshold_metric_id       = "query"
  alarm_description         = "direct_Connection_Bps_Ingress_${each.key}"
  alarm_actions             = var.alarm_actions
  insufficient_data_actions = []
  metric_query {
    id          = "query"
    expression  = "ANOMALY_DETECTION_BAND(metric,2)"
    label       = "direct_Connection_Bps_Ingress_${each.key}"
    return_data = "true"
  }
  metric_query {
    id          = "metric"
    return_data = "true"
    metric {
      metric_name = "ConnectionBpsIngress"
      namespace   = "AWS/DX"
      period      = var.period
      stat        = "Sum"
      unit        = "Count"
      dimensions = {
        "ConnectionId"  = each.key
      }
    }
  }
}

resource "aws_cloudwatch_metric_alarm" "direct_Connection_Pps_Ingress" {
  for_each = toset(var.direct_connect_id)
  alarm_name                = "direct_Connection_Pps_Ingress_${each.key}"
  comparison_operator       = "GreaterThanUpperThreshold"
  evaluation_periods        = var.evaluation_periods
  threshold_metric_id       = "query"
  alarm_description         = "direct_Connection_Pps_Ingress_${each.key}"
  alarm_actions             = var.alarm_actions
  insufficient_data_actions = []
  metric_query {
    id          = "query"
    expression  = "ANOMALY_DETECTION_BAND(metric,2)"
    label       = "direct_Connection_Pps_Ingress_${each.key}"
    return_data = "true"
  }
  metric_query {
    id          = "metric"
    return_data = "true"
    metric {
      metric_name = "ConnectionPpsIngress"
      namespace   = "AWS/DX"
      period      = var.period
      stat        = "Sum"
      unit        = "Count"
      dimensions = {
        "ConnectionId"  = each.key
      }
    }
  }
}

resource "aws_cloudwatch_metric_alarm" "direct_Connection_Pps_Egress" {
  for_each = toset(var.direct_connect_id)
  alarm_name                = "direct_Connection_Pps_Egress_${each.key}"
  comparison_operator       = "GreaterThanUpperThreshold"
  evaluation_periods        = var.evaluation_periods
  threshold_metric_id       = "query"
  alarm_description         = "direct_Connection_Pps_Egress_${each.key}"
  alarm_actions             = var.alarm_actions
  insufficient_data_actions = []
  metric_query {
    id          = "query"
    expression  = "ANOMALY_DETECTION_BAND(metric,2)"
    label       = "direct_Connection_Pps_Egress_${each.key}"
    return_data = "true"
  }
  metric_query {
    id          = "metric"
    return_data = "true"
    metric {
      metric_name = "ConnectionPpsEgress"
      namespace   = "AWS/DX"
      period      = var.period
      stat        = "Sum"
      unit        = "Count"
      dimensions = {
        "ConnectionId"  = each.key
      }
    }
  }
}
resource "aws_cloudwatch_metric_alarm" "direct_Connection_Error_Count" {
  for_each = toset(var.direct_connect_id)
  alarm_name                = "direct_Connection_Error_Count_${each.key}"
  comparison_operator       = "GreaterThanUpperThreshold"
  evaluation_periods        = var.evaluation_periods
  threshold_metric_id       = "query"
  alarm_description         = "direct_Connection_Error_Count_${each.key}"
  alarm_actions             = var.alarm_actions
  insufficient_data_actions = []
  metric_query {
    id          = "query"
    expression  = "ANOMALY_DETECTION_BAND(metric,2)"
    label       = "direct_Connection_Error_Count_${each.key}"
    return_data = "true"
  }
  metric_query {
    id          = "metric"
    return_data = "true"
    metric {
      metric_name = "ConnectionErrorCount"
      namespace   = "AWS/DX"
      period      = var.period
      stat        = "Sum"
      unit        = "Count"
      dimensions = {
        "ConnectionId"  = each.key
      }
    }
  }
}

resource "aws_cloudwatch_metric_alarm" "direct_Connection_Light_Level_Tx" {
  for_each = toset(var.direct_connect_id)
  alarm_name                = "direct_Connection_Light_Level_Tx_${each.key}"
  comparison_operator       = "GreaterThanUpperThreshold"
  evaluation_periods        = var.evaluation_periods
  threshold_metric_id       = "query"
  alarm_description         = "direct_Connection_Light_Level_Tx_${each.key}"
  alarm_actions             = var.alarm_actions
  insufficient_data_actions = []
  metric_query {
    id          = "query"
    expression  = "ANOMALY_DETECTION_BAND(metric,2)"
    label       = "direct_Connection_Light_Level_Tx_${each.key}"
    return_data = "true"
  }
  metric_query {
    id          = "metric"
    return_data = "true"
    metric {
      metric_name = "ConnectionLightLevelTx"
      namespace   = "AWS/DX"
      period      = var.period
      stat        = "Sum"
      unit        = "Count"
      dimensions = {
        "ConnectionId"  = each.key
      }
    }
  }
}

resource "aws_cloudwatch_metric_alarm" "direct_Connection_Light_Level_Rx" {
  for_each = toset(var.direct_connect_id)
  alarm_name                = "direct_Connection_Light_Level_Rx_${each.key}"
  comparison_operator       = "GreaterThanUpperThreshold"
  evaluation_periods        = var.evaluation_periods
  threshold_metric_id       = "query"
  alarm_description         = "direct_Connection_Light_Level_Rx_${each.key}"
  alarm_actions             = var.alarm_actions
  insufficient_data_actions = []
  metric_query {
    id          = "query"
    expression  = "ANOMALY_DETECTION_BAND(metric,2)"
    label       = "direct_Connection_Light_Level_Rx_${each.key}"
    return_data = "true"
  }
  metric_query {
    id          = "metric"
    return_data = "true"
    metric {
      metric_name = "ConnectionLightLevelRx"
      namespace   = "AWS/DX"
      period      = var.period
      stat        = "Sum"
      unit        = "Count"
      dimensions = {
        "ConnectionId"  = each.key
      }
    }
  }
}
