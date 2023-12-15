
########asg ###############
image_id              = "ami-048fa6bb7c2573ce5"
instance_type         = "t2.micro"
key_dev           = "Ansible_key"
dev_asg           = "DEV_ASG"
max_size              = 5
min_size              = 1
desired_capacity      = 2
asg_health_check_type = "EC2"
dev_asg_scale_up  = "dev_asg_scale_up"
adjustment_type       = "ChangeInCapacity"
scaling_adjustment    = "1" #increasing instance by 1 
cooldown              = "300"
policy_type           = "SimpleScaling"
asg-scale-up-alarm    = "dev_asg_scale_up"
metric_name           = "CPUUtilization"
threshold_value       = "10"
################## scale down ##################
asg-scale-down             = "dev_asg_scale_up"
adjustment_dev_type    = "ChangeInCapacity"
dev_scaling_adjustment = "1"
cooldown_period            = "300"
dev_policy_type        = "SimpleScaling"
############### scale down ###########
asg-scale-down-alarm   = "dev_asg_scale_up"
cloudwatch_metric_name = "CPUUtilization"
ec2_threshold_value    = "5"
