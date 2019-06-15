/*///////////////////////////////////////////////////////////////////////////////////////
	INIT
/*///////////////////////////////////////////////////////////////////////////////////////

if moment=0 {

	scr_tmtb_set_up_action_stats("Gawblin Spear")
	
	mmt_scream=scr_tmtb_set_kmmt(1)
	mmt_move=scr_tmtb_set_kmmt(50)
	mmt_swing=scr_tmtb_set_kmmt(14)
	mmt_strike=scr_tmtb_set_kmmt(6)
	mmt_strike_plus1=scr_tmtb_set_kmmt(1)
	mmt_dmg=scr_tmtb_set_kmmt(5)
	mmt_return=scr_tmtb_set_kmmt(2)
	mmt_complete=scr_tmtb_set_kmmt(14)	
	mmt_end=scr_tmtb_set_kmmt(action_wait_amount)
	
}


/*/////////////////////////////////////////////////////////////////////
	TMTB
/*/////////////////////////////////////////////////////////////////////

moment++

switch moment {
	
	case mmt_scream: {

		//sprite
		combatant.sprite_index=spr_gawblin_screaming
		var scream = scr_play_sfx(sfx_gremlin_scream)
		var pitch=0.8
		audio_sound_pitch(scream, pitch)
		
		break
	}
	
	//
	case mmt_move: {
		
		var hit_distance=24
		var xx = scr_tmtb_calculate_beside_x(combatant,target) - (hit_distance*combatant.facing_direction)
		scr_tmtb_move_combatant(combatant,spr_gawblin_screaming_hopping,xx,target.y,scr_tmtb_find_kmmt_next())
		
		break
	}
	
	//
	case mmt_swing: {
		
		//stop
		combatant.speed=0
		combatant.image_speed=0
		combatant.sprite_index=combatant.sprite[ATTACKING_RIGHT]
		combatant.image_index=0
		
		
		break
		
	}
	
	//
	case mmt_strike: {
		
		if target_is_a_combatant {
			DMG += script_execute(scr_get_dmg,combatant,target,action_power,action_type,magic,melee,accuracy)	
		}
		
		//stop
		combatant.speed=0
		combatant.image_speed=0
		combatant.sprite_index=combatant.sprite[ATTACKING_RIGHT]
		combatant.image_index=0
		
		if DMG!=0 {
			
			target.sprite_index=target.sprite[HURT_RIGHT]
			
			//battle effect
			var btlfx = instance_create_depth(target.x,target.y,target.depth,obj_vfx)
			btlfx.sprite_index=spr_vfx_pow
			
			scr_play_sfx(sfx_hit_1)
		}

		//sfx
		if DMG=0 {
			scr_play_sfx(sfx_swoosh)
		}
		
		break
	}
	
	case mmt_strike_plus1: {
		
		//stop
		combatant.speed=0
		combatant.image_speed=0
		combatant.sprite_index=combatant.sprite[ATTACKING_RIGHT]
		combatant.image_index=2
	
		break
	
	}
	
	case mmt_dmg: {
		
		combatant.image_speed=1
		
		//calculate dmg (but only if the target is a combatant
		if target_is_a_combatant {

			//display dmg
			scr_tmtb_display_dmg(DMG,target)
			script_execute(scr_establish_stat_alteration,target,"HP",-DMG,0.5)
			
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
		
		script_execute(scr_end_tmtb)
		break
		
	}

}