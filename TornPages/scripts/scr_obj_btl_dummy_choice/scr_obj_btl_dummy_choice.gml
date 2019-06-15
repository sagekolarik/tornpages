var allclear = scr_combatant_prechoice_check()
if allclear=false {exit}



with obj_btl_ctrl
		{
			action_tmtb = noone
			phase=STATUS_FX
			alarm[0]=1
		}


