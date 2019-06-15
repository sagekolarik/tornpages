/*///////////////////////////////////////////////////////////////////////////////////////
	INIT
/*///////////////////////////////////////////////////////////////////////////////////////

if moment=0 {

	scr_tmtb_set_up_action_stats("Undefined Action")

	mmt_move=scr_tmtb_set_kmmt(1)
	mmt_hit=scr_tmtb_set_kmmt(24)
	mmt_display_dmg=scr_tmtb_set_kmmt(6)
	mmt_return=scr_tmtb_set_kmmt(5)
	mmt_complete=scr_tmtb_set_kmmt(24)
	mmt_end=scr_tmtb_set_kmmt(action_wait_amount)
	
}

/*/////////////////////////////////////////////////////////////////////
	TMTB
/*/////////////////////////////////////////////////////////////////////

moment++

switch moment {
	
	case mmt_move: {
		
		var xx = scr_tmtb_calculate_beside_x(combatant,target)
		scr_tmtb_move_combatant(combatant,combatant.sprite[WALKING_RIGHT],xx,target.y,scr_tmtb_find_kmmt_next())
		
		break
	}
	
	case mmt_hit: {
		
		combatant.speed=0
		combatant.sprite_index=combatant.sprite[ATTACKING_RIGHT]
		
		//calculate damage
		if target_is_a_combatant {
			DMG += scr_get_dmg(combatant,target,action_power,action_type,magic,melee,accuracy)
		}

		if DMG!=0 {
			//target sprite
			target.sprite_index=target.sprite[HURT_RIGHT]
			
			//vfx
			var btlfx = instance_create_depth(target.x,target.y,target.depth,obj_vfx)
				btlfx.sprite_index=spr_vfx_pow
				
			//sfx
			scr_play_sfx(sfx_hit_1)
		}
		if DMG=0 {
			//sfx
			scr_play_sfx(sfx_swoosh)
		}
		
		break
	}
	
	case mmt_display_dmg: {
		
		//calculate dmg (but only if the target is a combatant
		if target_is_a_combatant {

			//display dmg
			scr_tmtb_display_dmg(DMG,target)
			//stat alt
			scr_establish_stat_alteration(target,"HP",-DMG,0.5)
			
		}
		
		break
		
	}
	
	case mmt_return: {
	
		scr_tmtb_move_combatant(combatant,combatant.sprite[WALKING_RIGHT],combatant.fixed_x,combatant.fixed_y,scr_tmtb_find_kmmt_next())
		break
			
	}
	
	case mmt_complete: {
		
			
		if !object_is_ancestor(target.object_index,obj_defeatedcombatant_parent) {
			target.sprite_index=target.sprite[RIGHT]
		}

		scr_tmtb_combatant_neutral_return(combatant)	
			
		break
		
	}

	
	case mmt_end: {
		
		scr_end_tmtb()
		break
		
	}

}