/*///////////////////////////////////////////////////////////////////////////////////////
	INIT
/*///////////////////////////////////////////////////////////////////////////////////////

if moment=0 {

mmt_run=scr_tmtb_set_kmmt(1)
mmt_grab=scr_tmtb_set_kmmt(25)
mmt_safety=scr_tmtb_set_kmmt((mmt_grab-mmt_run))
mmt_complete=scr_tmtb_set_kmmt(1)
mmt_end=scr_tmtb_set_kmmt(action_wait_amount)
	
}

/*/////////////////////////////////////////////////////////////////////
	TMTB
/*/////////////////////////////////////////////////////////////////////

moment++

switch moment {
	
	case mmt_run: {
		
		ogx=obj_ally_body.x
		ogy=obj_ally_body.y
		
		switch obj_party_stats.party[| 2] {
			case "Gumper": {
					partner_obj=obj_btl_gumper
					break
			}
			case "Edgar": {
					partner_obj=obj_btl_edgar
					break
			}
			case "Avi": {
				partner_obj=obj_btl_avi
				break
			}	
			
			case "Mona": {
				partner_obj=obj_btl_player
				break
			}	
			
			case "Florance": {
				partner_obj=obj_btl_player
				break
			}
			
			case "Shaide": {
				partner_obj=obj_btl_player
				break
			}	
		}
		
		var xx = -64
		var yy = obj_ally_body.y
		PARTNER=instance_create_depth(xx,yy,depth,partner_obj)

		//make combatant run away
		PARTNER.sprite_index=PARTNER.sprite[WALKING_RIGHT]
		PARTNER.facing_direction=1
		//dis/time=spd
		PARTNER.hspeed=point_distance(PARTNER.x,PARTNER.y,obj_ally_body.x,obj_ally_body.y)/25

		CAM.following=noone

		//activator
		with obj_turn_activator {
			if instance=other.target
				{instance_destroy()}
		}
		
		break
		
		}
		
	case mmt_grab: {
		
		with PARTNER {
			sprite_index=sprite[WALKING_RIGHT]
			facing_direction=1
			x=obj_ally_body.x-sprite_get_width(sprite_index)/2
			y=obj_ally_body.y
			hspeed=-hspeed/2
		}

		obj_ally_body.hspeed=PARTNER.hspeed
		obj_ally_body.facing_direction=-1

		//message text
		var rescuer = obj_party_stats.party[| 2]
		var victim = obj_party_stats.party[| 1]
		var message = instance_create_depth(x,y,depth-1,obj_passive_message)
				message.name="rescue_message"
				message.wait_time=15
				message.display_x=message.message_top_x
				message.display_y=message.message_top_y
				message.display_h=message.message_top_h
				message.display_w=message.message_top_w
				var page=0
				message.text[page++]=rescuer+" is taking "+victim+" to safety."
		
		//delete from list
		ds_list_delete(obj_party_stats.party, ds_list_find_index(obj_party_stats.party, victim))
		//add back to list
		ds_list_add(obj_party_stats.party,victim)
		
		break
		
	}
	
	case mmt_safety: {
		
		//create an object that will soon tell the partner to go to the correct spot
		var activator = instance_create_depth(x,y,depth,obj_partner_respawn_activator)
			activator.roundcount=2
			activator.instance=noone //NOTE: Could make it the instance before the partner in the order
			activator.x=x
			activator.y=y
			activator.fixed_x=obj_ally_body.fixed_x
			activator.fixed_y=obj_ally_body.fixed_y


		//delete everyone
		with PARTNER {instance_destroy()}
			PARTNER=noone
		with obj_turn_activator {
				if instance=obj_ally_body.id
					{instance_destroy()}
			}
			obj_turn_activator.x=obj_ally_body.fixed_x
			obj_turn_activator.y=obj_ally_body.fixed_y


		with obj_ally_body {instance_destroy()}
		
		break
		
	}
	
	case mmt_complete: {
		
		//check for end of message - if so, continue. If not, go replay moment until ready
		if instance_exists(obj_passive_message) and obj_passive_message.name="rescue_message"
			{moment--}
		
		break
		
	}
	
	case mmt_end: {
		
		execute_action_tmtb=false
		phase=BTLFLD_EVENT
		event_user(phase)
		
		break
		
	}
	
}
