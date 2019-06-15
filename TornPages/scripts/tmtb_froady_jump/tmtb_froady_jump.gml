/*///////////////////////////////////////////////////////////////////////////////////////

	INIT

/*///////////////////////////////////////////////////////////////////////////////////////

if moment=0 {

//----------------------------ACTION STATS----------------------------//

action_power = script_execute(scr_get_action_info,"Froady Jump","action_power")
action_type = script_execute(scr_get_action_info,"Froady Jump","type")
magic = script_execute(scr_get_action_info,"Froady Jump","magic")
melee = script_execute(scr_get_action_info,"Froady Jump","melee")
accuracy = script_execute(scr_get_action_info,"Froady Jump","accuracy")
mp_cost = script_execute(scr_get_action_info,"Froady Jump","mpcost")
target_is_a_combatant = object_is_ancestor(target.object_index,obj_combatant_parent)

//------------------------------MOMENTS------------------------------//

mmt_jump1=scr_tmtb_set_kmmt(1)
mmt_fall1=scr_tmtb_set_kmmt(10)
mmt_land1=scr_tmtb_set_kmmt(mmt_fall1-mmt_jump1)
mmt_jump2=scr_tmtb_set_kmmt(2)
mmt_fall2=scr_tmtb_set_kmmt(mmt_fall1-mmt_jump1)
mmt_land2=scr_tmtb_set_kmmt(mmt_fall2-mmt_jump2)

mmt_jump3=scr_tmtb_set_kmmt(1)

mmt_shrink=scr_tmtb_set_kmmt(1)

mmt_stop_shrinking=scr_tmtb_set_kmmt(25)
mmt_grow=scr_tmtb_set_kmmt(20)
mmt_stop_growing=scr_tmtb_set_kmmt(25)

mmt_fall3=scr_tmtb_set_kmmt(5)
mmt_land3=scr_tmtb_set_kmmt(10)
mmt_dmg=scr_tmtb_set_kmmt(4)
mmt_return=scr_tmtb_set_kmmt(20)
mmt_targreturn=scr_tmtb_set_kmmt(8)
mmt_complete=scr_tmtb_set_kmmt(35)
mmt_end=scr_tmtb_set_kmmt(action_wait_amount)
	
}

/*/////////////////////////////////////////////////////////////////////

	TMTB

/*/////////////////////////////////////////////////////////////////////

moment++

switch moment {
	
	case mmt_jump1: {
		
		//facing direction
		if combatant.x<target.x {combatant.facing_direction=1}
		if combatant.x>target.x {combatant.facing_direction=-1}
		
		combatant.sprite_index=spr_frog_hopping
		combatant.image_speed=1
		
		scr_establish_zchange(combatant,32,(mmt_fall1-mmt_jump1))
		
		//sfx
		scr_play_sfx(sfx_jump1)
		
		break
	}
	
	case mmt_fall1: {
		
		scr_establish_zchange(combatant,-combatant.z,(mmt_fall1-mmt_jump1))
		
		break
	}
	
	case mmt_land1: {
	
		
		break
	}
	
	case mmt_jump2: {
		
		combatant.image_index=1
		
		scr_establish_zchange(combatant,96,(mmt_fall1-mmt_jump1))
		
		//sfx
		scr_play_sfx(sfx_jump1)
		
		break
	}
	
	case mmt_fall2: {
		
		script_execute(scr_establish_zchange,combatant,-combatant.z,(mmt_fall1-mmt_jump1))
		
		break
	}
	
	case mmt_land2: {
	
		
		break
	}
	
	case mmt_jump3: {
		
		//move
		combatant.direction=point_direction(combatant.x,combatant.y,target.x,target.y+1)
		combatant.speed=point_distance(combatant.x,combatant.y,target.x,target.y+1)/(mmt_land3-moment)
		combatant.image_index=1
		
		script_execute(scr_establish_zchange,combatant,400,(mmt_fall1-mmt_jump1))
		
		//sfx
		scr_play_sfx(sfx_jump1)
		
		//make a new shadow
		frog_shadow=instance_create_depth(combatant.x,combatant.y,combatant.depth,obj_vfx)
		frog_shadow.animation_end_destruction=false
		frog_shadow.sprite_index=spr_shadow
		frog_shadow.image_xscale=abs(combatant.image_xscale)
		frog_shadow.image_yscale=combatant.image_yscale
		frog_shadow.image_alpha=0.7
		
		//move shadow
		frog_shadow.direction=point_direction(combatant.x,combatant.y,target.x,target.y+1)
		frog_shadow.speed=point_distance(combatant.x,combatant.y,target.x,target.y+1)/(mmt_land3-moment)
		
		combatant.stats[? "HAS_SHADOW"]=false
		
		break
	}
	
	case mmt_shrink: {
		
		scr_establish_scalechange(frog_shadow,-abs(combatant.image_xscale)/2,mmt_stop_shrinking-mmt_shrink)
		
		break
	}
	
	case mmt_stop_shrinking: {
	
		
		break
	}
	
	case mmt_grow: {
		
		scr_establish_scalechange(frog_shadow,abs(combatant.image_xscale)/2,mmt_stop_shrinking-mmt_shrink)
	
		break
	}
	
	case mmt_stop_growing: {
		
		
		break
	}
	
	case mmt_fall3: {
		
		script_execute(scr_establish_zchange,combatant,-combatant.z,(mmt_fall1-mmt_jump1))
		
		combatant.sprite_index=spr_frog_hopping
		combatant.image_speed=0
		combatant.image_index=2
		
		combatant.stats[? "HAS_SHADOW"]=true
		
		with frog_shadow {instance_destroy()}
		
		break
	}
	
	case mmt_land3: {
		
		DMG += scr_get_dmg(combatant,target,action_power,action_type,magic,melee,accuracy)
			
		if DMG>0 {
				target.sprite_index=target.sprite[HURT_RIGHT]
		}
		
		scr_play_sfx(sfx_hit_1)
		
		
		if target_is_a_combatant {
			if target.facing_direction=-1 {
				target.direction=0
			}
			if target.facing_direction=1 {
				target.direction=180
			}
			target.speed=6
		}
		
		combatant.speed=0
		combatant.sprite_index=spr_frog_hopping
		combatant.image_speed=0
		combatant.image_index=3
		
		break
	}
	
	
	case mmt_dmg: {
		
		target.speed=0
		combatant.image_index=combatant.sprite[RIGHT]
		combatant.image_speed=1
		
		//calculate dmg (but only if the target is a combatant
		if target_is_a_combatant {

			scr_tmtb_display_dmg(DMG,target)
			scr_establish_stat_alteration(target,"HP",-DMG,0.5)
			
		}
		
		break
		
	}
	
	
	
	case mmt_return: {
	
			if target_is_a_combatant and !object_is_ancestor(target.object_index,obj_defeatedcombatant_parent) {
				scr_tmtb_move_combatant(target,target.sprite[WALKING_RIGHT],target.fixed_x,target.fixed_y,scr_tmtb_find_kmmt_next())
			}
			
			scr_tmtb_move_combatant(combatant,combatant.sprite[WALKING_RIGHT],combatant.fixed_x,combatant.fixed_y,mmt_complete)
			
			break
			
	}
	
	case mmt_targreturn: {
		
		if target_is_a_combatant and !object_is_ancestor(target.object_index,obj_defeatedcombatant_parent) {
					//sprites
					target.sprite_index=target.sprite[RIGHT]
					target.speed=0
					target.x=target.fixed_x
					target.y=target.fixed_y
		}
		
		break
	}
	
	case mmt_complete: {
		
		scr_tmtb_combatant_neutral_return(combatant)	
		break
		
	}

	
	case mmt_end: {
		
		script_execute(scr_end_tmtb)
		break
		
	}

}
