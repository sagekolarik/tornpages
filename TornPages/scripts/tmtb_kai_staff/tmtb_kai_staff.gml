/*///////////////////////////////////////////////////////////////////////////////////////

	INIT

/*///////////////////////////////////////////////////////////////////////////////////////

if moment=0 {

scr_tmtb_set_up_action_stats("Staff")

mmt_move=scr_tmtb_set_kmmt(1)
mmt_jump=scr_tmtb_set_kmmt(12)
mmt_fall=scr_tmtb_set_kmmt(7)
mmt_hit1=scr_tmtb_set_kmmt(mmt_fall-mmt_jump-1)
mmt_hit1_plus1=scr_tmtb_set_kmmt(1)
mmt_hit2=scr_tmtb_set_kmmt(10)
mmt_hit2_plus1=scr_tmtb_set_kmmt(1)
mmt_hit3=scr_tmtb_set_kmmt(10)
mmt_hit3_plus1=scr_tmtb_set_kmmt(1)
mmt_hit3_fall=scr_tmtb_set_kmmt(floor((mmt_fall-mmt_jump)/2))
mmt_hit3_land=scr_tmtb_set_kmmt(floor((mmt_fall-mmt_jump)/2))
mmt_dmg=scr_tmtb_set_kmmt(1)
mmt_return=scr_tmtb_set_kmmt(5)
mmt_complete=scr_tmtb_set_kmmt(16)
mmt_end=scr_tmtb_set_kmmt(action_wait_amount)

jump_height=64
	
}

/*/////////////////////////////////////////////////////////////////////

	TMTB

/*/////////////////////////////////////////////////////////////////////

moment++

switch moment {
	
	case mmt_move: {
		

		var xx= scr_tmtb_calculate_beside_x(combatant,target)
			xx -= (3*target.stats[? "SIZE"])*combatant.facing_direction
		scr_tmtb_move_combatant(combatant,combatant.sprite[WALKING_RIGHT],xx,target.y+1,scr_tmtb_find_kmmt_next())
		
		break
	}
	
	//
	case mmt_jump: {
		
		
		
		//z
		scr_establish_zchange(combatant,jump_height,mmt_fall-mmt_jump)
		var xx=scr_tmtb_calculate_beside_x(combatant,target)
		scr_tmtb_move_combatant(combatant,combatant.sprite[ATTACKING_RIGHT],xx,target.y+1,mmt_hit1)
		combatant.image_index=0
		combatant.image_speed=0
	
		
		break
	}
	
	case mmt_fall: {
		
		//z
		scr_establish_zchange(combatant,-combatant.z,mmt_fall-mmt_jump)
		
		break
	}
	
	case mmt_hit1: {
		
		combatant.z=0
		combatant.image_index=1
		combatant.speed=0
		combatant.direction=0
		
		//calculate dmg (but only if the target is a combatant
		if target_is_a_combatant {
			
			var dmg=0
			DMG_list[| dmg]=scr_get_dmg(combatant,target,action_power,action_type,magic,melee,accuracy)
			DMG+=DMG_list[| dmg]
			
			if DMG_list[| dmg]!=0 {
				target.sprite_index=target.sprite[HURT_RIGHT]
				scr_tmtb_display_dmg(DMG_list[| dmg],target)
				scr_play_sfx(sfx_hit_1)
			}
			
			if DMG_list[| dmg]=0 {
				scr_play_sfx(sfx_swoosh)
			}
			
		}
		
		break
		
	}
	
	case mmt_hit1_plus1: {
		
		combatant.image_index=2
		target.sprite_index=target.sprite[RIGHT]
		break
		
	}
	
	case mmt_hit2: {
		
		combatant.image_index=3
		
		if target_is_a_combatant {
			
			var dmg=0
			DMG_list[| dmg]=scr_get_dmg(combatant,target,action_power,action_type,magic,melee,accuracy)
			DMG+=DMG_list[| dmg]
			
			if DMG_list[| dmg]!=0 {
				target.sprite_index=target.sprite[HURT_RIGHT]
				scr_tmtb_display_dmg(DMG_list[| dmg],target)
				scr_play_sfx(sfx_hit_1)
			}
			
			if DMG_list[| dmg]=0 {
				scr_play_sfx(sfx_swoosh)
			}
			
		}
		
		break
		
	}
	
	case mmt_hit2_plus1: {
		
		combatant.image_index=4
		break
		
	}
	
	case mmt_hit3: {
		
		combatant.image_index=5
		
		if target_is_a_combatant {
			
			var dmg=0
			DMG_list[| dmg]=scr_get_dmg(combatant,target,action_power,action_type,magic,melee,accuracy)
			DMG+=DMG_list[| dmg]
			
			if DMG_list[| dmg]!=0 {
				target.sprite_index=target.sprite[HURT_RIGHT]
				scr_tmtb_display_dmg(DMG_list[| dmg],target)
				scr_play_sfx(sfx_hit_1)
			}
			
			if DMG_list[| dmg]=0 {
				scr_play_sfx(sfx_swoosh)
			}
			
		}
		
		//tutorial battle
		if global.btlcd=101 and obj_btl_rosai_training.tutorial_cutscenes_completed=3 {
			DUMMY.sprite[HURT_RIGHT]=spr_dummy_pole
			DUMMY.sprite[RIGHT]=spr_dummy_pole
			DUMMY.sprite_index=DUMMY.sprite[HURT_RIGHT]
			
			dummy_head=instance_create_depth(DUMMY.x,DUMMY.y,DUMMY.depth,obj_vfx)
			dummy_head.sprite_index=spr_dummy_head
			dummy_head.animation_end_destruction=false
			dummy_head.vspeed=-5
			dummy_head.hspeed=8
			dummy_head.scale=DUMMY.image_xscale
		}
		
		break
		
	}
	
	case mmt_hit3_plus1: {
		
		combatant.image_index=6
		break
		
	}
	
	case mmt_hit3_fall: {
		
		//z
		scr_establish_zchange(combatant,-combatant.z,mmt_hit3_land-mmt_hit3_fall)
	
		
		break
		
	}
	
	case mmt_hit3_land: {
		
		combatant.z=0
		break
	}
	
	case mmt_dmg: {
		
		scr_establish_stat_alteration(target,"HP",-DMG,0.5)
		break
	}
	
	case mmt_return: {
		scr_tmtb_move_combatant(combatant,combatant.sprite[WALKING_RIGHT],combatant.fixed_x,combatant.fixed_y,scr_tmtb_find_kmmt_next())
		combatant.image_speed=1
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