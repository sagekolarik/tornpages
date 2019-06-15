/*///////////////////////////////////////////////////////////////////////////////////////

	INIT

/*///////////////////////////////////////////////////////////////////////////////////////

if moment=0 {

mmt_run=scr_tmtb_set_kmmt(1)
mmt_stop=scr_tmtb_set_kmmt(25)
mmt_complete=scr_tmtb_set_kmmt(10)
mmt_end=scr_tmtb_set_kmmt(action_wait_amount)
	
}

/*/////////////////////////////////////////////////////////////////////

	TMTB

/*/////////////////////////////////////////////////////////////////////

moment++

switch moment {
	
	case mmt_run: {


		//find next partner
		switch obj_party_stats.party[| 1] {
				case "Gumper":
					{
						partner_obj=obj_btl_gumper
						break
					}
				case "Edgar":
					{
						partner_obj=obj_btl_edgar
						break
					}
				case "Avi":
					{
						partner_obj=obj_btl_avi
						break
					}	
		}

		var xx = -64
		var yy = partner_fixed_y
		PARTNER=instance_create_depth(xx,yy,depth,partner_obj)

		//make combatant run away
		PARTNER.sprite_index=PARTNER.sprite[WALKING_RIGHT]
		PARTNER.facing_direction=1
		
		//fixed x and y
		PARTNER.fixed_x=partner_fixed_x
		PARTNER.fixed_y=partner_fixed_y
		
		//dis/time=spd
		PARTNER.hspeed=point_distance(PARTNER.x,PARTNER.y,PARTNER.fixed_x,PARTNER.fixed_y)/25
		


		//for HUD
		obj_btl_hud.PARTNER=PARTNER
		
		break
		
	}
	
	case mmt_stop: {
		
		PARTNER.x=PARTNER.fixed_x
		PARTNER.y=PARTNER.fixed_y

		PARTNER.speed=0

		PARTNER.sprite_index=PARTNER.sprite[VICTORY]
		
		//ADD TO LIST
		ds_list_add(ALLY,PARTNER)
		ds_list_insert(order,current_combatant+1,PARTNER)
		
		break
		
	}
	
	case mmt_complete: {
		
		//check for end of message - if so, continue. If not, go replay moment until ready
		if instance_exists(obj_passive_message) and obj_passive_message.name="rescue_message"
			{moment--}
		//if ready to move on, go to idle sprite first
		else {
			PARTNER.sprite_index=PARTNER.sprite[RIGHT]
			PARTNER.image_speed=1
		}
		
		break
		
	}
	
	case mmt_end: {
		
		execute_action_tmtb=false
		phase=BTLFLD_EVENT
		event_user(phase)
		
		break
		
	}
	
	
	
}
