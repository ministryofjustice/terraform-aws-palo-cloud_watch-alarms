resource "aws_cloudwatch_metric_alarm" "dataplane_cpu-high" {
  count               = var.dataplane_cpu-enable ? 1 : 0
  alarm_name          = "dataplane_CPU_utilization-high"
  alarm_description   = "Alarm for PAN high CPU utilization"
  metric_name         = "DataPlaneCPUUtilizationPct"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = "1"
  threshold           = var.high_dataplanecpu_threshold
  statistic           = "Average"
  actions_enabled     = true
  alarm_actions       = var.dataplane_cpu-scale_up_actions
  period              = var.period-dataplane_cpu
  unit                = "Percent"
  namespace           = var.namespace
}

resource "aws_cloudwatch_metric_alarm" "dataplane_cpu-low" {
  count               = var.dataplane_cpu-enable ? 1 : 0
  alarm_name          = "dataplane_CPU_utilization-low"
  alarm_description   = "Alarm for PAN low CPU utilization"
  metric_name         = "DataPlaneCPUUtilizationPct"
  comparison_operator = "LessThanThreshold"
  evaluation_periods  = "1"
  threshold           = var.low_dataplanecpu_threshold
  statistic           = "Average"
  actions_enabled     = true
  alarm_actions       = var.dataplane_cpu-scale_down_actions
  period              = var.period-dataplane_cpu
  unit                = "Percent"
  namespace           = var.namespace
}

resource "aws_cloudwatch_metric_alarm" "active_sessions-high" {
  count               = var.active_sessions-enable ? 1 : 0
  alarm_name          = "active_sessions-high"
  alarm_description   = "Alarm for high - Active Sessions"
  metric_name         = "panActiveSession"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = "1"
  threshold           = var.threshold-active_sessions-high
  statistic           = "Average"
  actions_enabled     = true
  alarm_actions       = var.active_sessions-scale_up_actions
  period              = var.period-active_sessions
  unit                = "Count"
  namespace           = var.namespace
}

resource "aws_cloudwatch_metric_alarm" "active_sessions-low" {
  count               = var.active_sessions-enable ? 1 : 0
  alarm_name          = "active_sessions-low"
  alarm_description   = "Alarm for low - Active Sessions"
  metric_name         = "panActiveSession"
  comparison_operator = "LessThanThreshold"
  evaluation_periods  = "1"
  threshold           = var.threshold-active_sessions-low
  statistic           = "Average"
  actions_enabled     = true
  alarm_actions       = var.active_sessions-scale_down_actions
  period              = var.period-active_sessions
  unit                = "Count"
  namespace           = var.namespace
}

resource "aws_cloudwatch_metric_alarm" "session_utilization-high" {
  count               = var.session_utilization-enable ? 1 : 0
  alarm_name          = "session_utilization-high"
  alarm_description   = "Alarm for high - session utilization "
  metric_name         = "panSessionUtilization"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = "1"
  threshold           = var.threshold-session_utilization-high
  statistic           = "Average"
  actions_enabled     = true
  alarm_actions       = var.session_utilization-scale_up_actions
  period              = var.period-session_utilization
  unit                = "Percent"
  namespace           = var.namespace
}

resource "aws_cloudwatch_metric_alarm" "session_utilization-low" {
  count               = var.session_utilization-enable ? 1 : 0
  alarm_name          = "session_utilization-low"
  alarm_description   = "Alarm for low - Session Utilization "
  metric_name         = "panSessionUtilization"
  comparison_operator = "LessThanThreshold"
  evaluation_periods  = "1"
  threshold           = var.threshold-session_utilization-low
  statistic           = "Average"
  actions_enabled     = true
  alarm_actions       = var.session_utilization-scale_down_actions
  period              = var.period-session_utilization
  unit                = "Percent"
  namespace           = var.namespace
}

resource "aws_cloudwatch_metric_alarm" "GP_gateway_utilization-high" {
  count               = var.GP_gateway_utilization-enable ? 1 : 0
  alarm_name          = "GP_gateway_utilization-high"
  alarm_description   = "Alarm for high - GP Gateway Utilization"
  metric_name         = "panGatewayUtilizationPct"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = "1"
  threshold           = var.threshold-GP_Gateway_Utilization-high
  statistic           = "Average"
  actions_enabled     = true
  alarm_actions       = var.GP_gateway_utilization-scale_up_actions
  period              = var.period-GP_gateway_utilization
  unit                = "Percent"
  namespace           = var.namespace
}

resource "aws_cloudwatch_metric_alarm" "GP_gateway_utilization-low" {
  count               = var.GP_gateway_utilization-enable ? 1 : 0
  alarm_name          = "GP_gateway_utilization-low"
  alarm_description   = "Alarm for low - GP gateway utilization"
  metric_name         = "panGatewayUtilizationPct"
  comparison_operator = "LessThanThreshold"
  evaluation_periods  = "1"
  threshold           = var.threshold-GP_gateway_utilization-low
  statistic           = "Average"
  actions_enabled     = true
  alarm_actions       = var.GP_gateway_utilization-scale_down_actions
  period              = var.period-GP_gateway_utilization
  unit                = "Percent"
  namespace           = var.namespace
}

resource "aws_cloudwatch_metric_alarm" "GP_active_tunnel-high" {
  count               = var.GP_active_tunnel-enable ? 1 : 0
  alarm_name          = "GP_active_tunnels-high"
  alarm_description   = "Alarm for high - GP Active Tunnels"
  metric_name         = "panGPGWUtilizationActiveTunnels"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = "1"
  threshold           = var.threshold-GP_active_tunnel-high
  statistic           = "Average"
  actions_enabled     = true
  alarm_actions       = var.GP_active_tunnel-scale_up_actions
  period              = var.period-GP_active_tunnel-high
  unit                = "Count"
  namespace           = var.namespace
}

resource "aws_cloudwatch_metric_alarm" "GP_active_tunnel-low" {
  count               = var.GP_active_tunnel-enable ? 1 : 0
  alarm_name          = "GP_active_tunnel-low"
  alarm_description   = "Alarm for low - GP active tunnel"
  metric_name         = "panGPGWUtilizationActiveTunnels"
  comparison_operator = "LessThanThreshold"
  evaluation_periods  = "1"
  threshold           = var.threshold-GP_active_tunnel-low
  statistic           = "Average"
  actions_enabled     = true
  alarm_actions       = var.GP_active_tunnel-scale_down_actions
  period              = var.period-GP_active_tunnel-low
  unit                = "Count"
  namespace           = var.namespace
}

resource "aws_cloudwatch_metric_alarm" "dataplane_buffer_utilization-high" {
  count               = var.dataplane_buffer_utilization-enable ? 1 : 0
  alarm_name          = "dataplane_buffer_utilization-high"
  alarm_description   = "Alarm for high - Dataplane Buffer Utilization"
  metric_name         = "DataPlanePacketBufferUtilization"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = "1"
  threshold           = var.threshold-dataplane_buffer_utilization-high
  statistic           = "Average"
  actions_enabled     = true
  alarm_actions       = var.dataplane_buffer_utilization-scale_up_actions
  period              = var.period-dataplane_buffer_utilization
  unit                = "Percent"
  namespace           = var.namespace
}

resource "aws_cloudwatch_metric_alarm" "dataplane_buffer_utilization-low" {
  count               = var.dataplane_buffer_utilization-enable ? 1 : 0
  alarm_name          = "dataplane_buffer_utilization-low"
  alarm_description   = "Alarm for low - Dataplane Buffer utilization"
  metric_name         = "DataPlanePacketBufferUtilization"
  comparison_operator = "LessThanThreshold"
  evaluation_periods  = "1"
  threshold           = var.threshold-dataplane_buffer_utilization-low
  statistic           = "Average"
  actions_enabled     = true
  alarm_actions       = var.dataplane_buffer_utilization-scale_down_actions
  period              = var.period-dataplane_buffer_utilization
  unit                = "Percent"
  namespace           = var.namespace
}

resource "aws_cloudwatch_metric_alarm" "ssl_proxy_utilization-high" {
  count               = var.ssl_proxy_utilization-enable ? 1 : 0
  alarm_name          = "ssl_proxy_utilization-high"
  alarm_description   = "Alarm for high - Session SSL Proxy Utilization"
  metric_name         = "panSessionSslProxyUtilization"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = "1"
  threshold           = var.threshold-ssl_proxy_utilization-high
  statistic           = "Average"
  actions_enabled     = true
  alarm_actions       = var.ssl_proxy_utilization-scale_up_actions
  period              = var.period-ssl_proxy_utilization
  unit                = "Percent"
  namespace           = var.namespace
}

resource "aws_cloudwatch_metric_alarm" "ssl_proxy_utilization-low" {
  count               = var.ssl_proxy_utilization-enable ? 1 : 0
  alarm_name          = "ssl_proxy_utilization-low"
  alarm_description   = "Alarm for low - Session SSL Proxy Utilization"
  metric_name         = "DataPlanePacketBufferUtilization"
  comparison_operator = "LessThanThreshold"
  evaluation_periods  = "1"
  threshold           = var.threshold-ssl_proxy_utilization-low
  statistic           = "Average"
  actions_enabled     = true
  alarm_actions       = var.ssl_proxy_utilization-scale_down_actions
  period              = var.period-ssl_proxy_utilization
  unit                = "Percent"
  namespace           = var.namespace
}
