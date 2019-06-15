if instance_exists(obj_start_position) and persistent=true
{
	if start_at_door {
		with obj_start_position {
			
				if last_room=other.last_room and door_number=other.door_number
				{
					other.x=x
					other.y=y
				
					//reset follow queue
					ds_queue_clear(other.follow_queue_x)
					ds_queue_clear(other.follow_queue_y)
				}
				
			}
	}
	
}


if ds_list_size(obj_party_stats.party)>1 and !instance_exists(obj_partner_parent) {
	
	script_execute(scr_player_create_partner)
	
}

//from now on, start at the door
start_at_door=true

//make sprite facing sprite
event_perform_object(obj_npc,ev_room_start,0)


