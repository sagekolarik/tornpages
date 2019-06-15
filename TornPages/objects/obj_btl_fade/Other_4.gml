if !room=rm_btl
	{
		room_set_persistent(room,false)
		if instance_exists(obj_player) {with obj_player persistent=true}
	}
	
//for now
if room=rm_btl {instance_destroy()}
