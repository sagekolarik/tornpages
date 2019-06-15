if global.cutscene {instance_destroy(); exit}

if instance_exists(obj_player) {
	
	var ypos = camera_get_view_y(view)
	var middle = ypos+obj_view.view_height/2
	
	start_pos=noone
	with obj_start_position {
		if last_room=obj_player.last_room {
			other.start_pos=id
		}
	}
	
	if instance_exists(start_pos) {
		if start_pos.y<middle {	
			var message_location = DOWN
			display_y=guiheight-display_margin
		
		}
		else {
			var message_location = UP	
			display_y=display_margin
		}
	}
	
	
	//check
	if obj_player.location!=text {
		obj_player.location=text
	}
	else {
		instance_destroy()
	}
	
}

