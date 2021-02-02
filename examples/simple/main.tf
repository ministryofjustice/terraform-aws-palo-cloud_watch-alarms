provider "aws" {
  region = "ca-central-1"
}

module "cw" {
  source                             = "../../"
  active_sessions-scale_down_actions = [aws_autoscaling_policy.bat.arn]
  active_sessions-scale_up_actions   = [aws_autoscaling_policy.bat.arn]
  dataplane_cpu-enable               = true
  high_dataplanecpu_threshold        = 60
  low_dataplanecpu_threshold         = 20
  active_sessions-enable             = true
  threshold-active_sessions-high     = 10
  threshold-active_sessions-low      = 5
}

resource "aws_autoscaling_policy" "bat" {
  name                   = "foobar3-terraform-test"
  scaling_adjustment     = 4
  adjustment_type        = "ChangeInCapacity"
  cooldown               = 300
  autoscaling_group_name = "PANSFW ASG"
}
