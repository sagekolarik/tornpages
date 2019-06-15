/*///////////////////////////////////////////////////////////////////////////////////////

	INIT

/*///////////////////////////////////////////////////////////////////////////////////////

if moment=0 {

mmt_start=scr_tmtb_set_kmmt(1)
mmt_text = scr_tmtb_set_kmmt(10)
mmt_complete = scr_tmtb_set_kmmt(11)
mmt_end=scr_tmtb_set_kmmt(action_wait_amount)
	
}

/*/////////////////////////////////////////////////////////////////////

	EXCEPTIONS

/*/////////////////////////////////////////////////////////////////////

if combatant.object_index = obj_btl_maw {
	
	//do the carnivorous maw poisoned, then exit
	tmtb_statusfx_poi_maw()
	exit
	
}

/*/////////////////////////////////////////////////////////////////////

	TMTB

/*/////////////////////////////////////////////////////////////////////

moment++

switch moment {
	
	case mmt_start: {
			
		var btlfx = instance_create_depth(target.x,target.y-16,target.depth-1,obj_vfx)
			btlfx.sprite_index=spr_vfx_poi
			btlfx.depth_yoffset=0
			
		var btltxt = instance_create_depth(target.x,target.y-32,target.depth-1,obj_btl_txt)			
			btltxt.text="Poison"
			btltxt.color=c_green

		//sprite
		target.sprite_index=target.sprite[HURT_RIGHT]
		
		//set the pssive textbox
		
		
		break
		
	}
	
	case mmt_text: {
		
		//add attack
		var amount=floor(random(2))+1
		target.stats[? "HP"]-=amount
		//if it's fatal
		if target.stats[? "HP"]<=0 {
			target.stats[? "HP"]=0
		}

		scr_tmtb_display_dmg(amount,target)
			
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
