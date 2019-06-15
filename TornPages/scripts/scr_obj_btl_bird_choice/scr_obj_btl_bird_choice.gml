var allclear = script_execute(scr_combatant_prechoice_check)
if allclear=false {exit}

//other parameters for action
var success=true

if success {

	//choose target
	script_execute(scr_enemy_choice_random)
	
	//choose attack script
	obj_btl_ctrl.action_tmtb = tmtb_undefined_action;

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

