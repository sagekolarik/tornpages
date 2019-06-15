/*///////////////////////////////////////////////////////////////////////////////////////
	INIT
/*///////////////////////////////////////////////////////////////////////////////////////

if moment=0 {

scr_tmtb_set_up_action_stats("Maw Bite")

travel_time=25 + combatant.poison_turn_counter*12
pause_time= 4 + combatant.poison_turn_counter*3

mmt_move=scr_tmtb_set_kmmt(2)
mmt_pause=scr_tmtb_set_kmmt(travel_time)
mmt_jump=scr_tmtb_set_kmmt(pause_time)
mmt_bite=scr_tmtb_set_kmmt(6)
mmt_land=scr_tmtb_set_kmmt(mmt_bite-mmt_jump)
mmt_dmg=scr_tmtb_set_kmmt(3)
mmt_return=scr_tmtb_set_kmmt(2)
mmt_complete=scr_tmtb_set_kmmt(travel_time)
mmt_end=scr_tmtb_set_kmmt(action_wait_amount)
	
}

/*/////////////////////////////////////////////////////////////////////
	TMTB
/*/////////////////////////////////////////////////////////////////////

moment++

switch moment {
	
	case mmt_move: {
		
		var xx = scr_tmtb_calculate_beside_x(combatant,target) - 40*combatant.facing_direction
		scr_tmtb_move_combatant(combatant,combatant.sprite[WALKING_RIGHT],xx,target.y-1,scr_tmtb_find_kmmt_next())
		
		break
	}
	
	case mmt_pause: {
		
		combatant.speed=0
		combatant.sprite_index=combatant.sprite[RIGHT]
		
		break
	}
	
	case mmt_jump: {
		
		combatant.sprite_index=combatant.sprite[ATTACKING_RIGHT]
		break
	}
	
	case mmt_bite: {
		
		combatant.speed=0
		
		if target_is_a_combatant {
		
			DMG += script_execute(scr_get_dmg,combatant,target,action_power,action_type,magic,melee,accuracy)
			//target
			if DMG!=0 {
				target.sprite_index=target.sprite[HURT_RIGHT]
				scr_play_sfx(sfx_fluffer_chomp)
			}
			if DMG=0 {
				scr_play_sfx(sfx_swoosh)
			}
		}
		else {
			scr_play_sfx(sfx_fluffer_chomp)
		}
		
		break
		
	}
	
	case mmt_dmg: {
		
		combatant.sprite_index=combatant.sprite[RIGHT]
		combatant.image_speed=1
		
		//calculate dmg (but only if the target is a combatant
		if target_is_a_combatant {

			scr_tmtb_display_dmg(DMG,target)
			scr_establish_stat_alteration(target,"HP",-DMG,0.5)
			
		}
		
		break
		
	}
	
	case mmt_return: {
	
			scr_tmtb_move_combatant(combatant,combatant.sprite[WALKING_RIGHT],combatant.fixed_x,combatant.fixed_y,scr_tmtb_find_kmmt_next())
			break
			
	}
	
	case mmt_complete: {
		
			if target_is_a_combatant and !object_is_ancestor(target.object_index,obj_defeatedcombatant_parent) {
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