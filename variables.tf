variable "scale_up_policy" {
  type = string
  description = "policy arn for scaling up"
}
variable "scale_down_policy" {
  type = string
  description = "policy for scaling down"
}
variable "name_space" {
  type = string
  description = "name space"
  default = "panfw"
}
#******************************************************************************
# Enable Metrics variables
#******************************************************************************
variable "dataplane_cpu-enable" {
  type = bool
  default = false
  description = "Enable Metrice"
}
variable "active_sessions-enable" {
  type = bool
  default = false
  description = "Enable Metrice"
}
variable "session_utilization-enable" {
  type = bool
  default = false
  description = "Enable Metrice"
}
variable "GP_gateway_utilization-enable" {
  type = bool
  default = false
  description = "Enable Metrice"
}
variable "GP_active_tunnel-enable" {
  type = bool
  default = false
  description = "Enable Metrice"
}
variable "dataplane_buffer_utilization-enable" {
  type = bool
  default = false
  description = "Enable Metrice"
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

