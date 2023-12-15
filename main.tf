
module "ASG" {
  source = "git::https://github.com/pankaj0129/ASG_terraform.git?ref=ASG_module"
  dev                    = var.dev
  image_id                   = var.image_id
  instance_type              = var.instance_type
  key_dev                = var.key_dev
  dev_sg_id              = "sg-068b15a2949b41a59"
  dev_asg                = var.dev_asg
  max_size                   = var.max_size
  min_size                   = var.min_size
  desired_capacity           = var.desired_capacity
  asg_health_check_type      = var.asg_health_check_type
  subnets = ["subnet-034f7c5244ce7e6b0"]
  dev_asg_scale_up       = var.dev_asg_scale_up
  adjustment_type            = var.adjustment_type
  scaling_adjustment         = var.scaling_adjustment
  cooldown                   = var.cooldown
  policy_type                = var.policy_type
  asg-scale-up-alarm         = var.asg-scale-up-alarm
  metric_name                = var.metric_name
  threshold_value            = var.threshold_value
  asg-scale-down             = var.asg-scale-down
  adjustment_dev_type    = var.adjustment_dev_type
  dev_scaling_adjustment = var.dev_scaling_adjustment
  cooldown_period            = var.cooldown_period
  dev_policy_type        = var.dev_policy_type
  asg-scale-down-alarm       = var.asg-scale-down-alarm
  cloudwatch_metric_name     = var.cloudwatch_metric_name
  ec2_threshold_value        = var.ec2_threshold_value

}


