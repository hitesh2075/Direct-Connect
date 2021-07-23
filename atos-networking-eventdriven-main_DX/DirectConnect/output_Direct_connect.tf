output "direct_Connection_State_alarm_arn" {
  value = {for key, value in aws_cloudwatch_metric_alarm.direct_Connection_State: key => value.arn}
}

output "direct_Connection_Bps_Egress_alarm_arn" {
  value = {for key, value in aws_cloudwatch_metric_alarm.direct_Connection_Bps_Egress: key => value.arn}
}

output "direct_Connection_Bps_Ingress_alarm_arn" {
  value = {for key, value in aws_cloudwatch_metric_alarm.direct_Connection_Bps_Ingress: key => value.arn}
}

output "direct_Connection_Pps_Ingress_alarm_arn" {
  value = {for key, value in aws_cloudwatch_metric_alarm.direct_Connection_Pps_Ingress: key => value.arn}
}

output "direct_Connection_Pps_Egress_alarm_arn" {
  value = {for key, value in aws_cloudwatch_metric_alarm.direct_Connection_Pps_Egress: key => value.arn}
}
output "direct_Connection_Error_Count_alarm_arn" {
  value = {for key, value in aws_cloudwatch_metric_alarm.direct_Connection_Error_Count: key => value.arn}
}

output "direct_Connection_Light_Level_Tx_alarm_arn" {
  value = {for key, value in aws_cloudwatch_metric_alarm.direct_Connection_Light_Level_Tx: key => value.arn}
}

output "direct_Connection_Light_Level_Rx_alarm_arn" {
  value = {for key, value in aws_cloudwatch_metric_alarm.direct_Connection_Light_Level_Rx: key => value.arn}
}

