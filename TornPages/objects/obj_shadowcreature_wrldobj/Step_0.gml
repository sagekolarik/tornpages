if instance_exists(obj_player) and !triggered and !dont_fade {
	if point_distance(x,y,obj_player.x, obj_player.y)<trigger_distance {
		triggered=true
		//sfx
	}
}

if triggered {
	
	image_alpha-=alpha_fadeout_amount
	
	if leave_direction=RIGHT {
		x+=spd
		if image_xscale<0 {
			image_xscale-=stretch_amount
		}
		if image_xscale>0 {
			image_xscale+=stretch_amount
		}
		image_yscale-=stretch_amount/2
	}
	
	if leave_direction=UP {
		y-=spd
		image_yscale+=stretch_amount
		if image_xscale<0 {
			image_xscale+=stretch_amount/2
		}
		if image_xscale>0 {
			image_xscale-=stretch_amount/2
		}
	}
	
}

if image_alpha=0 {instance_destroy()}