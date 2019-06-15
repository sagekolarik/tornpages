if global.debug {exit}

if instance_exists(obj_player) {
	if place_meeting(x,y,obj_player) {
		obj_player.x=obj_player.x_previous
		obj_player.y=obj_player.y_previous
		event_user(0)
	}
	
}