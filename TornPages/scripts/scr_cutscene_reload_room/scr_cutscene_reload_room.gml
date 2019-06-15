///@desc re-load the room while keeping kai and partner in position

if moment=0 {
	
	//create the fade
	fade = scr_room_transition_fadeout(room,c_black,0.1)
		fade.currently_walking_in=false
		
	//save player positioning
	if instance_exists(obj_player) {
		player_x=obj_player.x 
		player_y=obj_player.y 
		player_facing=obj_player.facing
		obj_player.start_at_door=false
	}
	if instance_exists(obj_partner_parent) {
		partner_x=obj_partner_parent.x 
		partner_y=obj_partner_parent.y
		partner_facing=obj_partner_parent.facing
	}
	if instance_exists(obj_npc_follow) {
		partner_x=obj_npc_follow.x 
		partner_y=obj_npc_follow.y
		partner_facing=obj_npc_follow.facing
	}
	if !instance_exists(obj_npc_follow) and !instance_exists(obj_partner_parent) {
		partner_x=obj_player.x
		partner_y=obj_player.y
		partner_facing=obj_player.facing
	}
			
}
//if it gets beyond here, the fade was created, finished the transition, then destroyed itself. This is the end.
if !instance_exists(obj_fade) {
	
	if instance_exists(obj_player) {
		obj_player.x=player_x
		obj_player.y=player_y
		obj_player.facing=player_facing
		obj_player.start_at_door=true
		obj_player.sprite_index=obj_player.sprite[obj_player.facing]
	}
	
	
	
	if instance_exists(obj_partner_parent) {
		obj_partner_parent.x = partner_x
		obj_partner_parent.y = partner_y
		obj_partner_parent.facing = partner_facing
		obj_partner_parent.sprite_index=obj_partner_parent.sprite[obj_partner_parent.facing]
	}
	if instance_exists(obj_npc_follow) {
		obj_npc_follow.x = partner_x
		obj_npc_follow.y = partner_y
		obj_npc_follow.facing = partner_facing
		obj_npc_follow.sprite_index=obj_npc_follow.sprite[obj_npc_follow.facing]
	}
	
	event_user(ADVANCE)
}

