if instance_exists(obj_message) or instance_exists(obj_cutscene) {exit}

interacting=true

if special_instructions=noone and text!=noone {
	
	//CREATE MESSAGE
	var message = script_execute(scr_create_message_specs,message_type,noone,"npc_dialogue")
		
	
	//GIVE NAME BANNER
	if name_banner!=noone {
		message.name_banner=name_banner
	}
	//font
	message.font=font
	
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
	
	//face when talking
	if face_when_talking=true {
		
		if return_to_ogsprite=true {
			og_facing=facing
			og_sprite=sprite_index
		}
		
		//face player
		if obj_player.facing=RIGHT {facing=LEFT}
		if obj_player.facing=LEFT {facing=RIGHT}
		if obj_player.facing=UP {facing=DOWN}
		if obj_player.facing=DOWN {facing=UP}
		
	}
	
	//change sprite
	sprite_index=sprite[facing]
	
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

