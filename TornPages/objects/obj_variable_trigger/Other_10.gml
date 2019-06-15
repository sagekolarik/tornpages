//trigger variable
if binary=true {
		
		set_plotvar(variable,true)
		
	}
if binary=false {
		set_plotvar(variable,check_plotvar(variable)+1)
	}
	

if destroy_after_trigger=true {
	
	ds_map_add(global.remembered_info,script_execute(scr_save_key),1)

	instance_destroy()

}


