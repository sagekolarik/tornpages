/*///////////////////////////////////////////////////////////////////////////////////////
	INIT
/*///////////////////////////////////////////////////////////////////////////////////////

if moment=0 {

mmt_run=scr_tmtb_set_kmmt(1)
mmt_sub=scr_tmtb_set_kmmt(25)
mmt_arrive=scr_tmtb_set_kmmt(25)
mmt_complete=scr_tmtb_set_kmmt(5)
mmt_end=scr_tmtb_set_kmmt(action_wait_amount)
	
}

/*/////////////////////////////////////////////////////////////////////
	TMTB
/*/////////////////////////////////////////////////////////////////////

moment++

switch moment {
	
	case mmt_run: {
		
		//make combatant run away
		combatant.sprite_index=combatant.sprite[WALKING_LEFT]
		ogx=combatant.x
		ogy=combatant.y
		combatant.hspeed=-8
	
		break
		
	}
	
	case mmt_sub: {
		
		var oldpartner=PARTNER
		var newpartner=instance_create_depth(combatant.x,combatant.y,combatant.depth,target)

		//battle order
		ds_list_replace(order, ds_list_find_index(order, oldpartner), newpartner)
		ds_list_replace(ALLY, ds_list_find_index(ALLY, oldpartner), newpartner)

		//names
		combatant=newpartner
		PARTNER=newpartner
		obj_btl_hud.PARTNER=newpartner
		
		PARTNER.fixed_x=oldpartner.fixed_x
		PARTNER.fixed_y=oldpartner.fixed_y

		with oldpartner {instance_destroy()}

		with newpartner {
			
			sprite_index=sprite[WALKING_RIGHT]
			facing_direction=1
			hspeed=8
			
		}

		//change party order in the stats
		ds_list_delete(obj_party_stats.party, ds_list_find_index(obj_party_stats.party,newpartner.stats[? "NAME"]))
		ds_list_insert(obj_party_stats.party, 1, newpartner.stats[? "NAME"])
	
		break
		
	}
	
	case mmt_arrive: {
		
			PARTNER.speed=0
			PARTNER.x=PARTNER.fixed_x
			PARTNER.y=PARTNER.fixed_y


			//sprites
			if PARTNER.object_index=obj_btl_edgar {
				PARTNER.sprite_index=spr_edgar_talking
			}
		
			//sprites
			if PARTNER.object_index=obj_btl_gumper {
				PARTNER.sprite_index=spr_gumper_victory
			}

		//assign speech

		var txt="Speech has not been defined..."

		if PARTNER.object_index=obj_btl_edgar {
			var option_number=3
			var option = floor(random(option_number)) + 1
		
				if option = 1 {
					txt="And now, for my next trick..."
				}
				if option = 2 {
					txt="Did somebody call for an encore?"
				}
				if option = 3 {
					txt="Showtime!"
				}

		}

		if PARTNER.object_index=obj_btl_gumper {
			var option_number=3
			var option = floor(random(3))+1
		
				if option = 1 {
					txt="Well, here goes nothing."
				}
				if option = 2 {
					txt="I'm right behind you, buddy."
				}
				if option = 3 {
					txt="Time to dance. But in like a fighty-type sense, ya know?"
				}
		}

		//create message
		var message = instance_create_depth(x,y,depth-1,obj_passive_message)
				message.name="swap_message"
				message.wait_time=15
				message.display_x=message.dialogue_top_x
				message.display_y=message.dialogue_top_y
				message.display_h=message.dialogue_top_h
				message.display_w=message.dialogue_top_w
				message.text[0]=txt
				message.name_banner=PARTNER.stats[? "NAME"]
				
		
		break
		
	}
	
	case mmt_complete: {
		
		//check for end of message - if so, continue. If not, go replay moment until ready
		if instance_exists(obj_passive_message) and obj_passive_message.name="swap_message"
			{moment--}
		else
			{combatant.sprite_index=combatant.sprite[RIGHT]}
		
		break
		
	}
	
	case mmt_end: {
		
		execute_action_tmtb=false
		
		phase=CHOICE
		event_user(phase)
		
		break
		
	}
	
}
