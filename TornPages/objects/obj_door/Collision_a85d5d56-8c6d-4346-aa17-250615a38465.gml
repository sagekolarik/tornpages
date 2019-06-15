if obj_player.state=scr_player_passive_state or instance_exists(obj_fade) {exit}

if next_room!=noone {
	scr_room_transition_fadeout(next_room,c_black,0.1)
	fade.walk_in=walk_in
	obj_player.last_room=room
	obj_player.state=scr_player_passive_state
	obj_player.door_number=door_number
}
