// 3 - ACTION PHASE
	//current combatant executes timetable based on prefered action
	alarm[0]=-1
	
//destroy ui
instance_destroy(obj_btl_ui)
	
if action_tmtb!=noone {
	
	moment=0
	execute_action_tmtb=true
	
}

else {
	
	phase=STATUS_FX
	event_user(phase)
	
}

	
	