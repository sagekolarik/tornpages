depth=-y-y_offset

if instance_exists(target) {
	
	desired_x=target.x
	desired_y=target.y-target.stats[? "SIZE"]-y_offset
	
	if point_distance(x,y,desired_x,desired_y)<=follow_speed {
		
		speed=0
		x=desired_x
		y=desired_y
		
	}
	else {
		
		direction=point_direction(x,y,desired_x,desired_y)
		speed=follow_speed
		
	}
	
}
