if instance_exists(following)
	{
		x=following.x
		y=following.y
	}
	
if instance_exists(obj_light_ctrl) and !my_own_color {
	color=obj_light_ctrl.color
}

if !instance_exists(obj_light_ctrl) {instance_destroy()}


