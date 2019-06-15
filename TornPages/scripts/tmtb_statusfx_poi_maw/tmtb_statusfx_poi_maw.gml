/*///////////////////////////////////////////////////////////////////////////////////////

	INIT

/*///////////////////////////////////////////////////////////////////////////////////////

if moment=0 {

ds_list_clear(tmtb_kmmt)
mmt_start=scr_tmtb_set_kmmt(1)
mmt_text = scr_tmtb_set_kmmt(12)
mmt_complete = scr_tmtb_set_kmmt(30)
mmt_end=scr_tmtb_set_kmmt(action_wait_amount)

	
}

/*/////////////////////////////////////////////////////////////////////

	TMTB

/*/////////////////////////////////////////////////////////////////////

moment++

switch moment {
	
	case mmt_start: {
			
		var btlfx = instance_create_depth(target.x,target.y,target.depth-1,obj_vfx)
			btlfx.sprite_index=spr_vfx_poi
			btlfx.depth_yoffset=0
			
		var btltxt = instance_create_depth(target.x,target.y-16,target.depth-1,obj_btl_txt)			
			btltxt.text="Poison"
			btltxt.color=c_green

		//sprite
		target.sprite_index=target.sprite[HURT_RIGHT]
		
		//set the pssive textbox
		
		
		break
		
	}
	
	case mmt_text: {
		
		//add attack
		var amount=floor(random(1))+1
		target.stats[? "HP"]-=amount
		//if it's fatal
		if target.stats[? "HP"]<=0 {
			target.stats[? "HP"]=0
		}

		scr_tmtb_display_dmg(amount,target)
		
		//txtbox - probably use a script to check for that
		var message = scr_create_message_specs(HEADSUP,25,"statusfx_notification")
			var page=0
		if combatant.poison_turn_counter=0 {
			message.text[page++]="The Carnivorous Maw is having an allergic reaction to human flesh."
			
			combatant.sprite[RIGHT]=spr_poimaw_idle
			combatant.sprite[WALKING_RIGHT]=spr_poimaw_slithering
		}
		
		if combatant.poison_turn_counter=1 {
			message.text[page++]="The Carnivorous Maw's throat is feeling really scratchy."
			
		}
		
		if combatant.poison_turn_counter=2 {
			message.text[page++]="The Carnivorous Maw can't feel it's face."
			message.text[page++]="Everything hurts."
			combatant.sprite[RIGHT]=spr_superpoimaw_idle
			combatant.sprite[WALKING_RIGHT]=spr_superpoimaw_slithering
			
		}
		
		if combatant.poison_turn_counter=3 {
			message.text[page++]="The Carnivorous Maw wants to scratch the rash."
			message.text[page++]="But it doesn't have hands."
			
			combatant.sprite[RIGHT]=spr_superpoimaw_idle
			combatant.sprite[WALKING_RIGHT]=spr_superpoimaw_slithering
			
		}
		
		if combatant.poison_turn_counter=4 {
			message.text[page++]="The Herbivorous Maw has decided to go vegan."
			
			target.hspeed=1
			var extra_time=90
			mmt_complete+=extra_time
			mmt_end+=extra_time
			target.sprite_index=target.sprite[WALKING_RIGHT]
			target.facing_direction=1
		}
			
		break
		
	}
	
	case mmt_complete: {
		
		target.sprite_index=target.sprite[RIGHT]
		
		if combatant.poison_turn_counter=4 {
			net_EXP+=floor(target.stats[? "EXP"]/2)
			with target {instance_destroy()}
			moment=mmt_end
			execute_action_tmtb=false
			phase=STATUS_FX
			event_user(phase)
		}
		
		break
		
	}
	
	case mmt_end: {
		
		if combatant.poison_turn_counter<4 {combatant.poison_turn_counter++}
		
		scr_end_tmtb()
		
		break
		
	}
}
