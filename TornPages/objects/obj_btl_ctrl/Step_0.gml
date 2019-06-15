/*/////////////////////////////////////////////////////

	INTRO

/*/////////////////////////////////////////////////////



/*/////////////////////////////////////////////////////

	STAT ALT

/*/////////////////////////////////////////////////////

if stat_alt=true
		{script_execute(scr_btl_ctrl_stat_alt)}

/*/////////////////////////////////////////////////////

	TIMETABLES

/*/////////////////////////////////////////////////////

if execute_action_tmtb {
	
		if action_tmtb!=noone {
			script_execute(action_tmtb)
		}
		
		else {
			show_message("ERROR - No timetable set")
			execute_action_tmtb=false
		}
	}

/*/////////////////////////////////////////////////////

	SKIPPING TURNS

/*/////////////////////////////////////////////////////

if phase=CHOICE {
	
	if instance_exists(obj_choice_message)
	{
	if obj_choice_message.name = "skip_phase_choice"
		{
			if obj_choice_message.chosen[1]=true
				{
					//don't skip
					with obj_choice_message {instance_destroy()}
					if instance_exists(obj_btl_ui) {obj_btl_ui.enabled=true}
					exit
				}
			if obj_choice_message.chosen[0]=true
				{
					//skip
					with obj_choice_message {instance_destroy()}
					with obj_btl_ui {instance_destroy()}
					
					action_tmtb=noone
					phase=STATUS_FX
					event_user(phase)
					exit
				}
		}
	}
}




