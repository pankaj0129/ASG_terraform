#########################launch template ###############################################

variable "dev" {
  type        = string
  description = "template name"
  default     = "dev_lt"
}
variable "image_id" {
  type        = string
  description = "launch_ami"
  default     = "dev"
}
variable "instance_type" {
  type        = string
  description = "instance"
  default     = "t2.micro"
}

variable "key_dev" {
  type    = string
  default = "dev"
}
#################### asg ########################
variable "max_size" {
  default = "1"
}
variable "min_size" {
  default = "1"
}
variable "desired_capacity" {
  default = "1"
}
variable "asg_health_check_type" {
  default = "ec2"
}
variable "availability_zones" {
  type    = list(string)
  default = ["ap-south-1a", "ap-south-1b"]
}
variable "dev_asg" {
  default = "jenkins_asg"
}
##########sacle up ############
variable "dev_asg_scale_up" {
  default = "dev_sacle"
}
variable "adjustment_type" {
  default = "ChangeInCapacity"
}
variable "scaling_adjustment" {
  default = "1"
}
variable "cooldown" {
  default = "300"
}
variable "policy_type" {
  default = "simple scaling"
}
variable "asg-scale-up-alarm" {
  default = "dev-scale-up"
}
variable "metric_name" {
  default = "120"
}
variable "threshold_value" {
  default = "30"
}
variable "subnets" {
  type    = list(string)
  default = ["my_subnet"]
}

####################### scale down ############
variable "asg-scale-down" {
  default = "dev_asg_scale_down"
}
variable "adjustment_dev_type" {
  default = "ChangeInCapacity"
}
variable "dev_scaling_adjustment" {
  default = "-1"
}
variable "cooldown_period" {
  default = "300"
}
variable "dev_policy_type" {
  default = "SimpleScaling"
}
variable "asg-scale-down-alarm" {
  default = "asg-scale-down"
}
variable "cloudwatch_metric_name" {
  default = "CPUUtilization"
}
variable "ec2_threshold_value" {
  default = "5"
}


#########################launch template ###############################################

variable "dev" {
  type        = string
  description = "template name"
  default     = "dev_lt"
}
variable "image_id" {
  type        = string
  description = "launch_ami"
  default     = "dev"
}
variable "instance_type" {
  type        = string
  description = "instance"
  default     = "t2.micro"
}

variable "key_dev" {
  type    = string
  default = "dev"
}
#################### asg ########################
variable "max_size" {
  default = "1"
}
variable "min_size" {
  default = "1"
}
variable "desired_capacity" {
  default = "1"
}
variable "asg_health_check_type" {
  default = "ec2"
}
variable "availability_zones" {
  type    = list(string)
  default = ["ap-south-1a", "ap-south-1b"]
}
variable "dev_asg" {
  default = "jenkins_asg"
}
##########sacle up ############
variable "dev_asg_scale_up" {
  default = "dev_sacle"
}
variable "adjustment_type" {
  default = "ChangeInCapacity"
}
variable "scaling_adjustment" {
  default = "1"
}
variable "cooldown" {
  default = "300"
}
variable "policy_type" {
  default = "simple scaling"
}
variable "asg-scale-up-alarm" {
  default = "dev-scale-up"
}
variable "metric_name" {
  default = "120"
}
variable "threshold_value" {
  default = "30"
}
variable "subnets" {
  type    = list(string)
  default = ["my_subnet"]
}

####################### scale down ############
variable "asg-scale-down" {
  default = "dev_asg_scale_down"
}
variable "adjustment_dev_type" {
  default = "ChangeInCapacity"
}
variable "dev_scaling_adjustment" {
  default = "-1"
}
variable "cooldown_period" {
  default = "300"
}
variable "dev_policy_type" {
  default = "SimpleScaling"
}
variable "asg-scale-down-alarm" {
  default = "asg-scale-down"
}
variable "cloudwatch_metric_name" {
  default = "CPUUtilization"
}
variable "ec2_threshold_value" {
  default = "5"
}


#########################launch template ###############################################

variable "dev" {
  type        = string
  description = "template name"
  default     = "dev_lt"
}
variable "image_id" {
  type        = string
  description = "launch_ami"
  default     = "dev"
}
variable "instance_type" {
  type        = string
  description = "instance"
  default     = "t2.micro"
}

variable "key_dev" {
  type    = string
  default = "dev"
}
#################### asg ########################
variable "max_size" {
  default = "1"
}
variable "min_size" {
  default = "1"
}
variable "desired_capacity" {
  default = "1"
}
variable "asg_health_check_type" {
  default = "ec2"
}
variable "availability_zones" {
  type    = list(string)
  default = ["ap-south-1a", "ap-south-1b"]
}
variable "dev_asg" {
  default = "jenkins_asg"
}
##########sacle up ############
variable "dev_asg_scale_up" {
  default = "dev_sacle"
}
variable "adjustment_type" {
  default = "ChangeInCapacity"
}
variable "scaling_adjustment" {
  default = "1"
}
variable "cooldown" {
  default = "300"
}
variable "policy_type" {
  default = "simple scaling"
}
variable "asg-scale-up-alarm" {
  default = "dev-scale-up"
}
variable "metric_name" {
  default = "120"
}
variable "threshold_value" {
  default = "30"
}
variable "subnets" {
  type    = list(string)
  default = ["my_subnet"]
}

####################### scale down ############
variable "asg-scale-down" {
  default = "dev_asg_scale_down"
}
variable "adjustment_dev_type" {
  default = "ChangeInCapacity"
}
variable "dev_scaling_adjustment" {
  default = "-1"
}
variable "cooldown_period" {
  default = "300"
}
variable "dev_policy_type" {
  default = "SimpleScaling"
}
variable "asg-scale-down-alarm" {
  default = "asg-scale-down"
}
variable "cloudwatch_metric_name" {
  default = "CPUUtilization"
}
variable "ec2_threshold_value" {
  default = "5"
}
