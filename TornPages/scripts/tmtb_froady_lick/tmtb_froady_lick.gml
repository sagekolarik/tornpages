/*///////////////////////////////////////////////////////////////////////////////////////
	INIT
/*///////////////////////////////////////////////////////////////////////////////////////

if moment=0 {

scr_tmtb_set_up_action_stats("Froady Lick")

mmt_move=scr_tmtb_set_kmmt(1)
mmt_pause=scr_tmtb_set_kmmt(24)
mmt_lick=scr_tmtb_set_kmmt(10)
mmt_smack=scr_tmtb_set_kmmt(10)
mmt_dmg=scr_tmtb_set_kmmt(4)
mmt_return=scr_tmtb_set_kmmt(15)
mmt_complete=scr_tmtb_set_kmmt(24)
mmt_end=scr_tmtb_set_kmmt(action_wait_amount)
	
}

/*/////////////////////////////////////////////////////////////////////
	TMTB
/*/////////////////////////////////////////////////////////////////////

moment++

switch moment {
	
	case mmt_move: {
		
		var distance = 88
		var xx = scr_tmtb_calculate_beside_x(combatant,target) - distance*combatant.facing_direction
		scr_tmtb_move_combatant(combatant,combatant.sprite[WALKING_RIGHT],xx,target.y-1,scr_tmtb_find_kmmt_next())
		
		break
	}
	
	case mmt_pause: {
		
		combatant.speed=0
		combatant.sprite_index=combatant.sprite[RIGHT]
		
		break
		
	}
	
	//
	case mmt_lick: {
		
		//stop
		combatant.speed=0
		combatant.sprite_index=spr_frog_attacking
		combatant.image_index=0
		
		scr_play_sfx(sfx_drip_low)
		
		break
	}
	
	case mmt_smack: {
		
		//calculate dmg (but only if the target is a combatant
		if target_is_a_combatant {
			
			DMG += scr_get_dmg(combatant,target,action_power,action_type,magic,melee,accuracy)
			
			if DMG>0 {
				target.sprite_index=target.sprite[HURT_RIGHT]
				scr_play_sfx(sfx_slap)
			}
			if DMG=0 {
				scr_play_sfx(sfx_swoosh)
			}
			
		}
		
		break
		
	}
	
	case mmt_dmg: {
		
		scr_establish_stat_alteration(target,"HP",-DMG,0.5)
		scr_tmtb_display_dmg(DMG,target)
		
		break
	}
	
	case mmt_return: {
	
			scr_tmtb_move_combatant(combatant,combatant.sprite[WALKING_RIGHT],combatant.fixed_x,combatant.fixed_y,scr_tmtb_find_kmmt_next())
			
			break
			
	}
	
	case mmt_complete: {
		
			
			if instance_exists(target) and !object_is_ancestor(target.object_index,obj_defeatedcombatant_parent) {
				target.sprite_index=target.sprite[RIGHT]
			}
			
			scr_tmtb_combatant_neutral_return(combatant)
			
			
		break
		
	}

	
	case mmt_end: {
		
		script_execute(scr_end_tmtb)
		break
		
	}

}
