Palo Alto Networks Custom PAN-OS Metrics Module for AWS
===========

A terraform module to deploy CloudWatch alarms leveraging custom PAN-OS Metrics in AWS
https://docs.paloaltonetworks.com/vm-series/9-1/vm-series-deployment/about-the-vm-series-firewall/custom-pan-os-metrics-published-for-monitoring.html

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_cloudwatch_metric_alarm.GP_active_tunnel-high](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.GP_active_tunnel-low](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.GP_gateway_utilization-high](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.GP_gateway_utilization-low](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.active_sessions-high](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.active_sessions-low](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.dataplane_buffer_utilization-high](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.dataplane_buffer_utilization-low](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.dataplane_cpu-high](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.dataplane_cpu-low](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.session_utilization-high](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.session_utilization-low](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.ssl_proxy_utilization-high](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.ssl_proxy_utilization-low](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_GP_active_tunnel-enable"></a> [GP\_active\_tunnel-enable](#input\_GP\_active\_tunnel-enable) | Enable Metric | `bool` | `false` | no |
| <a name="input_GP_active_tunnel-scale_down_actions"></a> [GP\_active\_tunnel-scale\_down\_actions](#input\_GP\_active\_tunnel-scale\_down\_actions) | actions for scaling down | `list(string)` | `[]` | no |
| <a name="input_GP_active_tunnel-scale_up_actions"></a> [GP\_active\_tunnel-scale\_up\_actions](#input\_GP\_active\_tunnel-scale\_up\_actions) | actions for scaling up | `list(string)` | `[]` | no |
| <a name="input_GP_gateway_utilization-enable"></a> [GP\_gateway\_utilization-enable](#input\_GP\_gateway\_utilization-enable) | Enable Metric | `bool` | `false` | no |
| <a name="input_GP_gateway_utilization-scale_down_actions"></a> [GP\_gateway\_utilization-scale\_down\_actions](#input\_GP\_gateway\_utilization-scale\_down\_actions) | actions for scaling down | `list(string)` | `[]` | no |
| <a name="input_GP_gateway_utilization-scale_up_actions"></a> [GP\_gateway\_utilization-scale\_up\_actions](#input\_GP\_gateway\_utilization-scale\_up\_actions) | actions for scaling up | `list(string)` | `[]` | no |
| <a name="input_active_sessions-enable"></a> [active\_sessions-enable](#input\_active\_sessions-enable) | Enable Metric | `bool` | `false` | no |
| <a name="input_active_sessions-scale_down_actions"></a> [active\_sessions-scale\_down\_actions](#input\_active\_sessions-scale\_down\_actions) | actions for scaling down | `list(string)` | `[]` | no |
| <a name="input_active_sessions-scale_up_actions"></a> [active\_sessions-scale\_up\_actions](#input\_active\_sessions-scale\_up\_actions) | actions for scaling up | `list(string)` | `[]` | no |
| <a name="input_dataplane_buffer_utilization-enable"></a> [dataplane\_buffer\_utilization-enable](#input\_dataplane\_buffer\_utilization-enable) | Enable Metric | `bool` | `false` | no |
| <a name="input_dataplane_buffer_utilization-scale_down_actions"></a> [dataplane\_buffer\_utilization-scale\_down\_actions](#input\_dataplane\_buffer\_utilization-scale\_down\_actions) | actions for scaling down | `list(string)` | `[]` | no |
| <a name="input_dataplane_buffer_utilization-scale_up_actions"></a> [dataplane\_buffer\_utilization-scale\_up\_actions](#input\_dataplane\_buffer\_utilization-scale\_up\_actions) | actions for scaling up | `list(string)` | `[]` | no |
| <a name="input_dataplane_cpu-enable"></a> [dataplane\_cpu-enable](#input\_dataplane\_cpu-enable) | Enable Metric | `bool` | `false` | no |
| <a name="input_dataplane_cpu-scale_down_actions"></a> [dataplane\_cpu-scale\_down\_actions](#input\_dataplane\_cpu-scale\_down\_actions) | actions for scaling down | `list(string)` | `[]` | no |
| <a name="input_dataplane_cpu-scale_up_actions"></a> [dataplane\_cpu-scale\_up\_actions](#input\_dataplane\_cpu-scale\_up\_actions) | actions for scaling up | `list(string)` | `[]` | no |
| <a name="input_high_dataplanecpu_threshold"></a> [high\_dataplanecpu\_threshold](#input\_high\_dataplanecpu\_threshold) | high\_dataplanecpu\_threshold | `number` | `999` | no |
| <a name="input_low_dataplanecpu_threshold"></a> [low\_dataplanecpu\_threshold](#input\_low\_dataplanecpu\_threshold) | low\_dataplanecpu\_threshold | `number` | `999` | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | namespace | `string` | `"panfw"` | no |
| <a name="input_period-GP_active_tunnel-high"></a> [period-GP\_active\_tunnel-high](#input\_period-GP\_active\_tunnel-high) | GP\_active\_tunnel | `number` | `300` | no |
| <a name="input_period-GP_active_tunnel-low"></a> [period-GP\_active\_tunnel-low](#input\_period-GP\_active\_tunnel-low) | GP\_active\_tunnel | `number` | `300` | no |
| <a name="input_period-GP_gateway_utilization"></a> [period-GP\_gateway\_utilization](#input\_period-GP\_gateway\_utilization) | GP\_gateway\_utilization | `number` | `300` | no |
| <a name="input_period-active_sessions"></a> [period-active\_sessions](#input\_period-active\_sessions) | period-active\_sessions | `number` | `300` | no |
| <a name="input_period-dataplane_buffer_utilization"></a> [period-dataplane\_buffer\_utilization](#input\_period-dataplane\_buffer\_utilization) | period-dataplane\_buffer\_utilization | `number` | `300` | no |
| <a name="input_period-dataplane_cpu"></a> [period-dataplane\_cpu](#input\_period-dataplane\_cpu) | dataplanecpu\_period | `number` | `300` | no |
| <a name="input_period-session_utilization"></a> [period-session\_utilization](#input\_period-session\_utilization) | session\_utilization | `number` | `300` | no |
| <a name="input_period-ssl_proxy_utilization"></a> [period-ssl\_proxy\_utilization](#input\_period-ssl\_proxy\_utilization) | period-ssl\_proxy\_utilization | `number` | `300` | no |
| <a name="input_session_utilization-enable"></a> [session\_utilization-enable](#input\_session\_utilization-enable) | Enable Metric | `bool` | `false` | no |
| <a name="input_session_utilization-scale_down_actions"></a> [session\_utilization-scale\_down\_actions](#input\_session\_utilization-scale\_down\_actions) | actions for scaling down | `list(string)` | `[]` | no |
| <a name="input_session_utilization-scale_up_actions"></a> [session\_utilization-scale\_up\_actions](#input\_session\_utilization-scale\_up\_actions) | actions for scaling up | `list(string)` | `[]` | no |
| <a name="input_ssl_proxy_utilization-enable"></a> [ssl\_proxy\_utilization-enable](#input\_ssl\_proxy\_utilization-enable) | Enable Metric | `bool` | `false` | no |
| <a name="input_ssl_proxy_utilization-scale_down_actions"></a> [ssl\_proxy\_utilization-scale\_down\_actions](#input\_ssl\_proxy\_utilization-scale\_down\_actions) | actions for scaling down | `list(string)` | `[]` | no |
| <a name="input_ssl_proxy_utilization-scale_up_actions"></a> [ssl\_proxy\_utilization-scale\_up\_actions](#input\_ssl\_proxy\_utilization-scale\_up\_actions) | actions for scaling up | `list(string)` | `[]` | no |
| <a name="input_threshold-GP_Gateway_Utilization-high"></a> [threshold-GP\_Gateway\_Utilization-high](#input\_threshold-GP\_Gateway\_Utilization-high) | threshold-GP\_Gateway\_Utilization-high | `number` | `999` | no |
| <a name="input_threshold-GP_active_tunnel-high"></a> [threshold-GP\_active\_tunnel-high](#input\_threshold-GP\_active\_tunnel-high) | threshold-GP\_active\_tunnel-high | `number` | `1500` | no |
| <a name="input_threshold-GP_active_tunnel-low"></a> [threshold-GP\_active\_tunnel-low](#input\_threshold-GP\_active\_tunnel-low) | threshold-GP\_active\_tunnel-low | `number` | `750` | no |
| <a name="input_threshold-GP_gateway_utilization-low"></a> [threshold-GP\_gateway\_utilization-low](#input\_threshold-GP\_gateway\_utilization-low) | threshold-GP\_gateway\_utilization-low | `number` | `999` | no |
| <a name="input_threshold-active_sessions-high"></a> [threshold-active\_sessions-high](#input\_threshold-active\_sessions-high) | threshold-active\_sessions-high | `number` | `100` | no |
| <a name="input_threshold-active_sessions-low"></a> [threshold-active\_sessions-low](#input\_threshold-active\_sessions-low) | threshold-active\_sessions-low | `number` | `100` | no |
| <a name="input_threshold-dataplane_buffer_utilization-high"></a> [threshold-dataplane\_buffer\_utilization-high](#input\_threshold-dataplane\_buffer\_utilization-high) | threshold-dataplane\_buffer\_utilization-high | `number` | `999` | no |
| <a name="input_threshold-dataplane_buffer_utilization-low"></a> [threshold-dataplane\_buffer\_utilization-low](#input\_threshold-dataplane\_buffer\_utilization-low) | threshold-dataplane\_buffer\_utilization-low | `number` | `999` | no |
| <a name="input_threshold-session_utilization-high"></a> [threshold-session\_utilization-high](#input\_threshold-session\_utilization-high) | threshold-session\_utilization-high | `number` | `999` | no |
| <a name="input_threshold-session_utilization-low"></a> [threshold-session\_utilization-low](#input\_threshold-session\_utilization-low) | threshold-session\_utilization-low | `number` | `999` | no |
| <a name="input_threshold-ssl_proxy_utilization-high"></a> [threshold-ssl\_proxy\_utilization-high](#input\_threshold-ssl\_proxy\_utilization-high) | threshold-ssl\_proxy\_utilization-high | `number` | `999` | no |
| <a name="input_threshold-ssl_proxy_utilization-low"></a> [threshold-ssl\_proxy\_utilization-low](#input\_threshold-ssl\_proxy\_utilization-low) | threshold-dataplane\_buffer\_utilization-low | `number` | `999` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
