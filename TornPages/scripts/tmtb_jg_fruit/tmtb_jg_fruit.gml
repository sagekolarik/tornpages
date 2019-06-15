/*///////////////////////////////////////////////////////////////////////////////////////

	INIT

/*///////////////////////////////////////////////////////////////////////////////////////

if moment=0 {

//----------------------------ACTION STATS----------------------------//

scr_tmtb_set_up_action_stats("Jungle Fruit")

//------------------------------MOMENTS------------------------------//

mmt_start=scr_tmtb_set_kmmt(1)
mmt_text = scr_tmtb_set_kmmt(12)
mmt_complete = scr_tmtb_set_kmmt(4)
mmt_end= scr_tmtb_set_kmmt(action_wait_amount)
	
}

/*/////////////////////////////////////////////////////////////////////

	TMTB

/*/////////////////////////////////////////////////////////////////////

moment++

switch moment {
	
	case mmt_start: {
		
		//remove item
		script_execute(scr_remove_item,"Jungle Fruit",1)

			
		var btlfx = instance_create_depth(target.x,target.y,target.depth-1,obj_vfx)
			btlfx.sprite_index=spr_vfx_heal
			btlfx.depth_yoffset=-16

		//sprite
		target.sprite_index=target.sprite[DOWN]
		
		break
		
	}
	
	case mmt_text: {
		
		//add attack
		var amount=floor(random(4))+6
		target.stats[? "HP"]+=amount

		scr_tmtb_display_dmg(-amount,target)
		
		var message=scr_create_message_specs(HEADSUP,15,"item_banner")
			var page=0
			message.text[page++]="Yummy!"
			
		break
		
	}
	
	case mmt_complete: {
		
		target.sprite_index=target.sprite[RIGHT]
		break
		
	}
	
	case mmt_end: {
		scr_end_tmtb()	
		break
	}
}
