image_alpha=0
next_room=rm_btl
last_room=room
fade_speed=0.1
fade_color=c_white
walk_in=false

room_set_persistent(room,true)
if instance_exists(obj_player) {with obj_player persistent=false}

if instance_exists(obj_player)
	{
		obj_player.state=scr_player_passive_state
	}
