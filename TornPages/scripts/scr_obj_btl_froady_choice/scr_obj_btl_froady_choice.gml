var allclear = script_execute(scr_combatant_prechoice_check)
if allclear=false {exit}

//other parameters for action
var success=true

if success {

	//choose target
	script_execute(scr_enemy_choice_random)
	
	//choose action
	var actions = stats[? "ACTIONS"]
	var choice = floor(random(ds_list_size(actions)))+1
	if choice=1 {obj_btl_ctrl.action_tmtb = tmtb_froady_lick}
	if choice=2 {obj_btl_ctrl.action_tmtb = tmtb_froady_jump}
	

	//for now, only choice is to attack
	with obj_btl_ctrl {
		
		//execute action
		phase=ACTION
		alarm[0]=1
	
		exit
			
	}
}

if !success {
	with obj_btl_ctrl
		{
			action_tmtb = noone
			phase=STATUS_FX
			alarm[0]=1
		}
		
	exit
}


