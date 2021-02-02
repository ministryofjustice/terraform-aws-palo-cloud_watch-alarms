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
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| GP\_active\_tunnel-enable | Enable Metric | `bool` | `false` | no |
| GP\_active\_tunnel-scale\_down\_actions | actions for scaling down | `list(string)` | `[]` | no |
| GP\_active\_tunnel-scale\_up\_actions | actions for scaling up | `list(string)` | `[]` | no |
| GP\_gateway\_utilization-enable | Enable Metric | `bool` | `false` | no |
| GP\_gateway\_utilization-scale\_down\_actions | actions for scaling down | `list(string)` | `[]` | no |
| GP\_gateway\_utilization-scale\_up\_actions | actions for scaling up | `list(string)` | `[]` | no |
| active\_sessions-enable | Enable Metric | `bool` | `false` | no |
| active\_sessions-scale\_down\_actions | actions for scaling down | `list(string)` | `[]` | no |
| active\_sessions-scale\_up\_actions | actions for scaling up | `list(string)` | `[]` | no |
| dataplane\_buffer\_utilization-enable | Enable Metric | `bool` | `false` | no |
| dataplane\_buffer\_utilization-scale\_down\_actions | actions for scaling down | `list(string)` | `[]` | no |
| dataplane\_buffer\_utilization-scale\_up\_actions | actions for scaling up | `list(string)` | `[]` | no |
| dataplane\_cpu-enable | Enable Metric | `bool` | `false` | no |
| dataplane\_cpu-scale\_down\_actions | actions for scaling down | `list(string)` | `[]` | no |
| dataplane\_cpu-scale\_up\_actions | actions for scaling up | `list(string)` | `[]` | no |
| high\_dataplanecpu\_threshold | high\_dataplanecpu\_threshold | `number` | `999` | no |
| low\_dataplanecpu\_threshold | low\_dataplanecpu\_threshold | `number` | `999` | no |
| namespace | namespace | `string` | `"panfw"` | no |
| period-GP\_active\_tunnel-high | GP\_active\_tunnel | `number` | `300` | no |
| period-GP\_active\_tunnel-low | GP\_active\_tunnel | `number` | `300` | no |
| period-GP\_gateway\_utilization | GP\_gateway\_utilization | `number` | `300` | no |
| period-active\_sessions | period-active\_sessions | `number` | `300` | no |
| period-dataplane\_buffer\_utilization | period-dataplane\_buffer\_utilization | `number` | `300` | no |
| period-dataplane\_cpu | dataplanecpu\_period | `number` | `300` | no |
| period-session\_utilization | session\_utilization | `number` | `300` | no |
| period-ssl\_proxy\_utilization | period-ssl\_proxy\_utilization | `number` | `300` | no |
| session\_utilization-enable | Enable Metric | `bool` | `false` | no |
| session\_utilization-scale\_down\_actions | actions for scaling down | `list(string)` | `[]` | no |
| session\_utilization-scale\_up\_actions | actions for scaling up | `list(string)` | `[]` | no |
| ssl\_proxy\_utilization-enable | Enable Metric | `bool` | `false` | no |
| ssl\_proxy\_utilization-scale\_down\_actions | actions for scaling down | `list(string)` | `[]` | no |
| ssl\_proxy\_utilization-scale\_up\_actions | actions for scaling up | `list(string)` | `[]` | no |
| threshold-GP\_Gateway\_Utilization-high | threshold-GP\_Gateway\_Utilization-high | `number` | `999` | no |
| threshold-GP\_active\_tunnel-high | threshold-GP\_active\_tunnel-high | `number` | `1500` | no |
| threshold-GP\_active\_tunnel-low | threshold-GP\_active\_tunnel-low | `number` | `750` | no |
| threshold-GP\_gateway\_utilization-low | threshold-GP\_gateway\_utilization-low | `number` | `999` | no |
| threshold-active\_sessions-high | threshold-active\_sessions-high | `number` | `100` | no |
| threshold-active\_sessions-low | threshold-active\_sessions-low | `number` | `100` | no |
| threshold-dataplane\_buffer\_utilization-high | threshold-dataplane\_buffer\_utilization-high | `number` | `999` | no |
| threshold-dataplane\_buffer\_utilization-low | threshold-dataplane\_buffer\_utilization-low | `number` | `999` | no |
| threshold-session\_utilization-high | threshold-session\_utilization-high | `number` | `999` | no |
| threshold-session\_utilization-low | threshold-session\_utilization-low | `number` | `999` | no |
| threshold-ssl\_proxy\_utilization-high | threshold-ssl\_proxy\_utilization-high | `number` | `999` | no |
| threshold-ssl\_proxy\_utilization-low | threshold-dataplane\_buffer\_utilization-low | `number` | `999` | no |

## Outputs

No output.

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
