variable "name_space" {
  type = string
  description = "name space"
  default = "panfw"
}
#******************************************************************************
# Metric Actions
#******************************************************************************
variable "dataplane_cpu-scale_up_actions" {
  type = list(string)
  description = "actions for scaling up"
  default = [] 
}
variable "dataplane_cpu-scale_down_actions" {
  type = list(string)
  description = "actions for scaling down"
  default = []
}
variable "active_sessions-scale_up_actions" {
  type = list(string)
  description = "actions for scaling up"
  default = [] 
}
variable "active_sessions-scale_down_actions" {
  type = list(string)
  description = "actions for scaling down"
  default = []
}
variable "session_utilization-scale_up_actions" {
  type = list(string)
  description = "actions for scaling up"
  default = [] 
}
variable "session_utilization-scale_down_actions" {
  type = list(string)
  description = "actions for scaling down"
  default = []
}
variable "GP_gateway_utilization-scale_up_actions" {
  type = list(string)
  description = "actions for scaling up"
  default = [] 
}
variable "GP_gateway_utilization-scale_down_actions" {
  type = list(string)
  description = "actions for scaling down"
  default = []
}
variable "GP_active_tunnel-scale_up_actions" {
  type = list(string)
  description = "actions for scaling up"
  default = [] 
}
variable "GP_active_tunnel-scale_down_actions" {
  type = list(string)
  description = "actions for scaling down"
  default = []
}
variable "dataplane_buffer_utilization-scale_up_actions" {
  type = list(string)
  description = "actions for scaling up"
  default = [] 
}
variable "dataplane_buffer_utilization-scale_down_actions" {
  type = list(string)
  description = "actions for scaling down"
  default = []
}
variable "ssl_proxy_utilization-scale_up_actions" {
  type = list(string)
  description = "actions for scaling up"
  default = [] 
}
variable "ssl_proxy_utilization-scale_down_actions" {
  type = list(string)
  description = "actions for scaling down"
  default = []
}
#******************************************************************************
# Enable Metrics variables
#******************************************************************************
variable "dataplane_cpu-enable" {
  type = bool
  default = false
  description = "Enable Metric"
}
variable "active_sessions-enable" {
  type = bool
  default = false
  description = "Enable Metric"
}
variable "session_utilization-enable" {
  type = bool
  default = false
  description = "Enable Metric"
}
variable "GP_gateway_utilization-enable" {
  type = bool
  default = false
  description = "Enable Metric"
}
variable "GP_active_tunnel-enable" {
  type = bool
  default = false
  description = "Enable Metric"
}
variable "dataplane_buffer_utilization-enable" {
  type = bool
  default = false
  description = "Enable Metric"
}

variable "ssl_proxy_utilization-enable" {
  type = bool
  default = false
  description = "Enable Metric"
}

#******************************************************************************
#  Threshold Variables
#******************************************************************************
variable "high_dataplanecpu_threshold" {
  type = number
  default = 999
  description = "high_dataplanecpu_threshold" 
}
variable "low_dataplanecpu_threshold" {
  type = number
  default = 999
  description = "low_dataplanecpu_threshold" 
}
variable "threshold-active_sessions-high" {
  type = number
  default = 100
  description = "threshold-active_sessions-high" 
}
variable "threshold-active_sessions-low" {
  type = number
  default = 100
  description = "threshold-active_sessions-low"
}  
variable "threshold-session_utilization-high" {
  type = number
  default = 999
  description = "threshold-session_utilization-high" 
}
variable "threshold-session_utilization-low" {
  type = number
  default = 999
  description = "threshold-session_utilization-low" 
}
variable "threshold-GP_Gateway_Utilization-high"{
  type = number
  default = 999
  description = "threshold-GP_Gateway_Utilization-high" 
}
variable "threshold-GP_gateway_utilization-low" {
  type = number
  default = 999
  description = "threshold-GP_gateway_utilization-low" 
}
variable "threshold-GP_active_tunnel-high"{
  type = number
  default = 999
  description = "threshold-GP_active_tunnel-high"
}
variable "threshold-GP_active_tunnel-low" {
  type = number
  default = 999
  description = "threshold-GP_active_tunnel-low" 
}
variable "threshold-dataplane_buffer_utilization-high" {
  type = number
  default = 999
  description = "threshold-dataplane_buffer_utilization-high" 
}
variable "threshold-dataplane_buffer_utilization-low" {
  type = number
  default = 999
  description = "threshold-dataplane_buffer_utilization-low" 
}
variable "threshold-ssl_proxy_utilization-high" {
  type = number
  default = 999
  description = "threshold-ssl_proxy_utilization-high" 
}
variable "threshold-ssl_proxy_utilization-low" {
  type = number
  default = 999
  description = "threshold-dataplane_buffer_utilization-low" 
}
#******************************************************************************
#  Period Variables
#******************************************************************************
variable "period-dataplane_cpu" {
  type = number
  default = 300
  description = "dataplanecpu_period"
}
variable "period-active_sessions" {
  type = number
  default = 300
  description = "period-active_sessions"
}
variable "period-session_utilization" {
  type = number
  default = 300
  description = "session_utilization"
}
variable "period-GP_gateway_utilization" {
  type = number
  default = 300
  description = "GP_gateway_utilization"
 } 
variable "period-GP_active_tunnel" {
  type = number
  default = 300
  description = "GP_active_tunnel"
 }
variable "period-dataplane_buffer_utilization" {
  type = number
  default = 300
  description = "period-dataplane_buffer_utilization"
}

variable "period-ssl_proxy_utilization" {
  type = number
  default = 300
  description = "period-ssl_proxy_utilization"
}
