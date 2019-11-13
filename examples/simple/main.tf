provider "aws" {
  region = "ca-central-1"
}

module "cw" {
  source = "../../"
  scale_down_policy = aws_autoscaling_policy.bat.arn
  scale_up_policy = aws_autoscaling_policy.bat.arn
  dataplane_cpu-enable = true
  high_dataplanecpu_threshold = 60
  low_dataplanecpu_threshold = 20
  active_sessions-enable = true
  threshold-active_sessions-high = 10
  threshold-active_sessions-low = 5
}

resource "aws_autoscaling_policy" "bat" {
  name                   = "foobar3-terraform-test"
  scaling_adjustment     = 4
  adjustment_type        = "ChangeInCapacity"
  cooldown               = 300
  autoscaling_group_name = "PANSFW ASG"
}
