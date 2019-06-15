if loading {
	var curr_rm = asset_get_index(remembered_info[? "current_room_name"])
	
	if room=curr_rm {
		if instance_exists(obj_player) {
			var xx = remembered_info[? "player_x"]
			obj_player.x=xx
			var yy = remembered_info[? "player_y"]
			obj_player.y=yy
		}
		
	loading=false
	}
}