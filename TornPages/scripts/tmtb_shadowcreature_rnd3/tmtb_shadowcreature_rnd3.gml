/*///////////////////////////////////////////////////////////////////////////////////////

	INIT

/*///////////////////////////////////////////////////////////////////////////////////////

if moment=0 {

//----------------------------ACTION STATS----------------------------//

action_power = script_execute(scr_get_action_info,"Undefined Action","action_power")
action_type = script_execute(scr_get_action_info,"Undefined Action","type")
magic = script_execute(scr_get_action_info,"Undefined Action","magic")
melee = script_execute(scr_get_action_info,"Undefined Action","melee")
accuracy = script_execute(scr_get_action_info,"Undefined Action","accuracy")
mp_cost = script_execute(scr_get_action_info,"Undefined Action","mpcost")
target_is_a_combatant = object_is_ancestor(target.object_index,obj_combatant_parent)

//------------------------------MOMENTS------------------------------//

mmt_calculate_dmg=1
mmt_let_go=2
mmt_move=mmt_let_go+100
mmt_start=mmt_move+30
mmt_dmg=mmt_start+10
mmt_return=mmt_dmg+2
mmt_leave=mmt_return+60

mmt_complete=mmt_leave+45
mmt_end=mmt_complete+action_wait_amount
	
}

/*/////////////////////////////////////////////////////////////////////

	TMTB

/*/////////////////////////////////////////////////////////////////////

moment++

switch moment {
	
	case mmt_calculate_dmg: {
		
		if target_is_a_combatant {
			
			//dmg
			DMG += target.stats[? "HP"]-1
			
		}
		
		break
	}
	
	case mmt_let_go: {
		
		combatant.sprite_index=spr_shadowcreature_body
		
		with combatant {
				sprite[RIGHT]=spr_shadowcreature_body
				sprite[UP]=spr_shadowcreature_body
				sprite[DOWN]=spr_shadowcreature_body
				sprite[LEFT]=spr_shadowcreature_body

				sprite[WALKING_RIGHT]=spr_shadowcreature_body
				sprite[WALKING_UP]=spr_shadowcreature_body
				sprite[WALKING_DOWN]=spr_shadowcreature_body
				sprite[WALKING_LEFT]=spr_shadowcreature_body
				sprite[ATTACKING_RIGHT]=spr_shadowcreature_body

				sprite[HURT_RIGHT]=spr_shadowcreature_body
				sprite[VICTORY]=spr_shadowcreature_body
				sprite[DEFEAT]=spr_shadowcreature_body

				sprite[JUMPING]=spr_shadowcreature_body

				sprite[BTLINTRO1]=spr_shadowcreature_body
				sprite[BTLINTRO2]=spr_shadowcreature_body
			}
		
		//make a new shadow
		TUPPY=instance_create_depth(combatant.x-16,combatant.y,combatant.depth,obj_vfx)
		TUPPY.animation_end_destruction=false
		TUPPY.sprite_index=spr_tuppy_walking_left_crying
		TUPPY.image_xscale=2
		TUPPY.image_yscale=2
		TUPPY.image_alpha=1
		TUPPY_shadow=instance_create_depth(combatant.x-16,combatant.y,combatant.depth,obj_vfx)
		TUPPY_shadow.animation_end_destruction=false
		TUPPY_shadow.sprite_index=spr_shadow
		TUPPY_shadow.image_xscale=2
		TUPPY_shadow.image_yscale=2
		TUPPY_shadow.image_alpha=0.5
		
		combatant.shadow_hand=false
		
		//move shadow
		TUPPY.hspeed=-8
		TUPPY_shadow.hspeed=TUPPY.hspeed
		
		combatant.holding_tuppy=false
		
		//
		
		var message = instance_create_depth(x,y,depth-1,obj_passive_message)
				message.name="message_message"
				message.wait_time=15
				message.display_x=message.message_top_x
				message.display_y=message.message_top_y
				message.display_h=message.message_top_h
				message.display_w=message.message_top_w
				message.text[0]="It let TUPPY free."
			
		break
	}
	
	//
	case mmt_move: {
		
		//facing direction
		if combatant.x<target.x {
			
				combatant.facing_direction=1
				desired_x=target.x-32
				
			}
		if combatant.x>target.x{
			
				combatant.facing_direction=-1
				desired_x=target.x+32
				
			}
			
		//move
		combatant.direction=point_direction(combatant.x,combatant.y,desired_x,target.y)
		combatant.hspeed=-24
		combatant.image_xscale=4
		
		break
	}
	
	//
	case mmt_start: {
		
		//stop
		combatant.speed=0
		combatant.image_xscale=2
		
		if DMG!=0 {
		//battle effect
		var btlfx = instance_create_depth(target.x,target.y,target.depth,obj_vfx)
		btlfx.sprite_index=spr_vfx_pow
		}

		//sprite
		combatant.sprite_index=combatant.sprite[ATTACKING_RIGHT]
		combatant.image_index=0
		if DMG!=0 {target.sprite_index=target.sprite[HURT_RIGHT]}

		//sfx
		if DMG!=0 {scr_play_sfx(sfx_hit_1)}
		if DMG=0 {scr_play_sfx(sfx_swoosh)}
		
		break
	}
	
	case mmt_dmg: {
		
		//calculate dmg (but only if the target is a combatant
		if target_is_a_combatant {

			//display dmg
				
			var btltxt = instance_create_depth(target.x,target.y,target.depth-1,obj_btl_txt)
				
			if DMG>0 {
				btltxt.text="-"+string(DMG)
			}
			if DMG<0 {
					btltxt.text="+"+string(DMG)
					btltxt.color=c_green		
			}
			if DMG=0 {
				
				btltxt.text="Missed"
				
				//special cases
				if target.stats[? "PHYSICAL_BLOCK"]=true {
					btltxt.text="Blocked!"
				}
			}
			
			//stat alt
				
				var comb = target
				var stat = "HP"
				var amount = -DMG
				var alteration_spd=0.5
				script_execute(scr_establish_stat_alteration,comb,stat,amount,alteration_spd)
			
		}
		
		break
		
	}
	
	case mmt_return: {
		
			target.sprite_index=target.sprite[RIGHT]
	
			//sprites
			combatant.sprite_index=spr_shadowcreature_body
			combatant.x=combatant.fixed_x
			combatant.image_xscale=2
			
			break
			
	}
	
	case mmt_leave: {
		
		combatant.sprite_index=spr_shadowcreature_body
		
		combatant.hspeed=24
		combatant.image_xscale=3
		
		//
		
		var message = instance_create_depth(x,y,depth-1,obj_passive_message)
				message.name="message_message"
				message.wait_time=15
				message.display_x=message.message_top_x
				message.display_y=message.message_top_y
				message.display_h=message.message_top_h
				message.display_w=message.message_top_w
				message.text[0]="It's leaving."
				
			
		break
	}
	
	case mmt_complete: {
			
			if !object_is_ancestor(target.object_index,obj_defeatedcombatant_parent) {
				target.sprite_index=target.sprite[RIGHT]
			}

			
			//face correct way
			if object_is_ancestor(combatant.object_index,obj_enemy_combatant_parent) {
				combatant.facing_direction=-1
			}
			if object_is_ancestor(combatant.object_index,obj_ally_combatant_parent) {
				combatant.facing_direction=1
			}
			
			with TUPPY {instance_destroy()}
			with TUPPY_shadow {instance_destroy()}
			
			
		break
		
	}

	
	case mmt_end: {
		
		//WIERD
		phase=END
		alarm[phase]=10
		
		break
		
	}

}