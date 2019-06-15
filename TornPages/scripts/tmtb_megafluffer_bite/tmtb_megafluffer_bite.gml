/*///////////////////////////////////////////////////////////////////////////////////////
	INIT
/*///////////////////////////////////////////////////////////////////////////////////////

if moment=0 {

	scr_tmtb_set_up_action_stats("MegaFluffer Bite")
	
	mmt_move=scr_tmtb_set_kmmt(1)
	mmt_pause=scr_tmtb_set_kmmt(16)
	mmt_jump=scr_tmtb_set_kmmt(4)
	mmt_bite=scr_tmtb_set_kmmt(6)
	mmt_dmg=scr_tmtb_set_kmmt(6)
	mmt_return=scr_tmtb_set_kmmt(2)
	mmt_complete=scr_tmtb_set_kmmt(16)
	mmt_end=scr_tmtb_set_kmmt(action_wait_amount)
	
}

/*/////////////////////////////////////////////////////////////////////
	TMTB
/*/////////////////////////////////////////////////////////////////////

moment++

switch moment {
	
	case mmt_move: {
		
		var jump_distance=64
		var xx = scr_tmtb_calculate_beside_x(combatant,target)
		xx -= jump_distance*combatant.facing_direction
		scr_tmtb_move_combatant(combatant,combatant.sprite[WALKING_RIGHT],xx,target.y,scr_tmtb_find_kmmt_next())
		
		break
	}
	
	//
	case mmt_pause: {
		
		//stop
		combatant.speed=0
		combatant.sprite_index=spr_megafluffer_jump
		combatant.image_speed=0
		combatant.image_index=0
		
		break
	}
	
	case mmt_jump: {
		
		var xx = target.x - (target.stats[? "SIZE"]/4)*combatant.facing_direction
		scr_tmtb_move_combatant(combatant,spr_megafluffer_jump,xx,target.y+1,scr_tmtb_find_kmmt_next())
		combatant.image_index=1
		
		//sfx
		scr_play_sfx(sfx_jump1)
		
		break
	}
	
	case mmt_bite: {
		
		//calculate damage
		if target_is_a_combatant {
			DMG += scr_get_dmg(combatant,target,action_power,action_type,magic,melee,accuracy)
			
			//target
			if DMG!=0 {
				target.sprite_index=target.sprite[HURT_RIGHT]
			}
		}
		
		//move
		combatant.speed=0
		combatant.image_index=2
		
		target.hspeed=combatant.facing_direction*2
		
		//sfx
		scr_play_sfx(sfx_fluffer_chomp)
		
		break
		
	}
	
	case mmt_dmg: {
		
		target.hspeed=0
		
		//combatant
		combatant.image_speed=1
		combatant.sprite_index=combatant.sprite[RIGHT]
		
		//calculate dmg (but only if the target is a combatant
		if target_is_a_combatant {
			//display & alter stats
			scr_tmtb_display_dmg(DMG,target)
			scr_establish_stat_alteration(target,"HP",-DMG,0.5)
		}
		
		break
		
	}
	
	case mmt_return: {
			
			if !object_is_ancestor(target.object_index,obj_defeatedcombatant_parent) {
				scr_tmtb_move_combatant(target,target.sprite[WALKING_RIGHT],target.fixed_x,target.fixed_y,scr_tmtb_find_kmmt_next())
			}
			
			scr_tmtb_move_combatant(combatant,combatant.sprite[WALKING_RIGHT],combatant.fixed_x,combatant.fixed_y,scr_tmtb_find_kmmt_next())
			break
			
	}
	
	case mmt_complete: {
		
			
			if !object_is_ancestor(target.object_index,obj_defeatedcombatant_parent) {
				target.sprite_index=target.sprite[RIGHT]
			}
			
			scr_tmtb_combatant_neutral_return(combatant)
			
			target.x=target.fixed_x
			target.y=target.fixed_y
			target.speed=0
			
			
		break
		
	}

	
	case mmt_end: {
		
		scr_end_tmtb()
		break
		
	}

}