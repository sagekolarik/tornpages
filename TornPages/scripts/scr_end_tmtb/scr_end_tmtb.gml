//see if stats are gone altering, if not, go to previous moment
if stat_alt=false {
	
	DMG=0
	ds_list_clear(DMG_list)
	ds_list_clear(tmtb_kmmt)
	
	//if a new tmtb was set
	if new_action_tmtb=noone {
		
		action_tmtb=noone
		execute_action_tmtb=false
		phase=STATUS_FX
		event_user(phase)
		exit
	}
	
	else {
		
		action_tmtb=new_action_tmtb
		moment=0
		new_action_tmtb=noone
		phase=ACTION
		event_user(phase)
		exit
		
	}
				
}
else {
	moment--
}