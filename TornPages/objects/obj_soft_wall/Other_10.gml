if instance_exists(obj_message) {exit}

if text!=noone {
	
	//CREATE MESSAGE
	var message = script_execute(scr_create_message_specs,DIALOGUE,noone,"npc_dialogue")
	
	//GIVE NAME BANNER
	if name_banner!=noone {
		message.name_banner=name_banner
	}
	
	//ASSIGN TEXT BASED ON SAVE KEY
	
		var my_key = script_execute(scr_save_key)

		if !ds_map_exists(global.remembered_info,my_key) {

			var current_text=dialogue_options[| 0]
		
		}
	
		else {
		
			var number_of_times_spoken_to = global.remembered_info[? my_key]
		
			var list_size = ds_list_size(dialogue_options)
		
			if number_of_times_spoken_to<list_size {
				current_text = dialogue_options[| number_of_times_spoken_to]
			}
			else {
				current_text = dialogue_options[| list_size-1]
			}
		
		}
	
	message.text=current_text
	
}

else {
	
	script_execute(special_instructions)
	
}


//add to save key in case of conditionals
var my_save_key = script_execute(scr_save_key)

if !ds_map_exists(global.remembered_info,my_save_key) {//if it isn't there
	ds_map_add(global.remembered_info,my_save_key,1)
}
else { //if it is already there
	global.remembered_info[? my_save_key]++
}



