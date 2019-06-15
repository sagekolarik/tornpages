/*///////////////////////////////////////////////////////////////////////////////////////

	INIT

/*///////////////////////////////////////////////////////////////////////////////////////

if moment=0 {

scr_tmtb_set_up_action_stats("Staff")

mmt_move=scr_tmtb_set_kmmt(1)
mmt_jump=scr_tmtb_set_kmmt(6)
mmt_fall=scr_tmtb_set_kmmt(7)
mmt_hit1=scr_tmtb_set_kmmt((mmt_fall-mmt_jump)-1)
mmt_hit1_minus_2=scr_tmtb_set_kmmt(2)
mmt_hit1_plus1=scr_tmtb_set_kmmt(1)
mmt_pause=scr_tmtb_set_kmmt(10)
mmt_return=scr_tmtb_set_kmmt(16)
mmt_dmg=scr_tmtb_set_kmmt(1)
mmt_complete=scr_tmtb_set_kmmt(18)
mmt_end=scr_tmtb_set_kmmt(action_wait_amount)

jump_height=64
	
}

/*/////////////////////////////////////////////////////////////////////

	TMTB

/*/////////////////////////////////////////////////////////////////////

moment++

switch moment {
	
	case mmt_move: {
		
		//facing direction
		if combatant.x<target.x {
			
				combatant.facing_direction=1
				desired_x=(combatant.x+target.x-(2*target.stats[? "SIZE"]))/2
				
			}
		if combatant.x>target.x{
			
				combatant.facing_direction=-1
				desired_x=(combatant.x+target.x+(2*target.stats[? "SIZE"]))/2
				
			}
		
		//move
		combatant.direction=point_direction(combatant.x,combatant.y,desired_x,target.y)
		combatant.speed=point_distance(combatant.x,combatant.y,desired_x,target.y)/(mmt_hit1-moment)

		//sprite
		combatant.sprite_index=combatant.sprite[WALKING_RIGHT]
		combatant.image_speed=2
		
		break
	}
	
	//
	case mmt_jump: {
		
		//stop
		if combatant.x<target.x {
			
				combatant.facing_direction=1
				desired_x=target.x-(2*target.stats[? "SIZE"])
				
			}
		if combatant.x>target.x{
			
				combatant.facing_direction=-1
				desired_x=target.x+(2*target.stats[? "SIZE"])
				
			}
		
		//z
		script_execute(scr_establish_zchange,combatant,jump_height,mmt_fall-mmt_jump)
			
		//move
		combatant.direction=point_direction(combatant.x,combatant.y,desired_x,target.y)
		combatant.speed=point_distance(combatant.x,combatant.y,desired_x,target.y)/(mmt_hit1-moment)

		//sprite
		combatant.sprite_index=combatant.sprite[ATTACKING_RIGHT]
		combatant.image_index=0
		combatant.image_speed=0
	
		
		break
	}
	
	case mmt_fall: {
		
		//z
		script_execute(scr_establish_zchange,combatant,-combatant.z,mmt_fall-mmt_jump)
		
		break
	}
	case mmt_hit1_minus_2: {
		
		target.x=1000
		target.speed=0
		break
	}
	
	case mmt_hit1: {
		
		var btltxt = instance_create_depth(target.fixed_x,target.fixed_y,target.depth-1,obj_btl_txt)	
			btltxt.z_speed=1
			btltxt.text="Missed"
		
		combatant.z=0
		combatant.image_index=1
		combatant.speed=0
		combatant.direction=0
		if combatant.x<target.x {
			
				combatant.facing_direction=1
				combatant.x=target.fixed_x-(2*target.stats[? "SIZE"])
				
			}
		if combatant.x>target.x{
			
				combatant.facing_direction=-1
				combatant.x=target.fixed_x+(2*target.stats[? "SIZE"])
				
			}

			
			//sfx
			scr_play_sfx(sfx_swoosh)
		
		break
		
	}
	
	case mmt_hit1_plus1: {
		
		combatant.image_index=2
		break
		
	}
	
	case mmt_pause: {
		
		combatant.image_speed=1
		combatant.sprite_index=spr_kai_idle_battle_4
		break
		
	}
	
	case mmt_dmg: {
		
		break
	}
	
	case mmt_return: {
	
			//sprites
			combatant.sprite_index=combatant.sprite[WALKING_RIGHT]
			
			//return to og position
			combatant.direction=point_direction(combatant.x,combatant.y,combatant.fixed_x,combatant.fixed_y)
			combatant.speed=point_distance(combatant.x,combatant.y,combatant.fixed_x,combatant.fixed_y)/14
			
			if combatant.hspeed>0 {combatant.facing_direction=1}
			if combatant.hspeed<0 {combatant.facing_direction=-1}
			
			break
			
	}
	
	case mmt_complete: {
		
			target.x=target.fixed_x
		
			
			combatant.speed=0
			combatant.sprite_index=combatant.sprite[RIGHT]
			combatant.image_speed=1
			combatant.x=combatant.fixed_x
			combatant.y=combatant.fixed_y

			
			//face correct way
			if object_is_ancestor(combatant.object_index,obj_enemy_combatant_parent) {
				combatant.facing_direction=-1
			}
			if object_is_ancestor(combatant.object_index,obj_ally_combatant_parent) {
				combatant.facing_direction=1
			}
			
		break
		
	}

	
	case mmt_end: {
		
		script_execute(scr_end_tmtb)
		
		break
		
	}

}