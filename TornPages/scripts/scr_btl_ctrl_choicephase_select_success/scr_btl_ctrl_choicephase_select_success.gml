///arg0 action

with obj_btl_ctrl {

	action=argument0

	//set target
	target=obj_btl_target_ui.target
	
	//get tmtb
	action_tmtb = script_execute(scr_get_action_info,action,"tmtb")
	if action_tmtb=0 {
		action_tmtb = script_execute(scr_get_item_info,action,"tmtb")
	}
	
	//set default target
	if obj_btl_target_ui.target_type = "offensive_notme" or obj_btl_target_ui.target_type = "offensive_metoo" {
		
		if object_is_ancestor(target.object_index,obj_enemy_combatant_parent) {
			default_enemy_target=target
		}
	}
	if obj_btl_target_ui.target_type = "defensive_notme" or obj_btl_target_ui.target_type = "defensive_metoo" {
		if object_is_ancestor(target.object_index,obj_ally_combatant_parent) {
			default_ally_target=target
		}
	}
	
	//destroy ui
	with obj_btl_ui {instance_destroy()}
	
	////sfx
	scr_play_sfx(sfx_select)	
		
	//next phase
	phase=ACTION
	alarm[0]=4

}