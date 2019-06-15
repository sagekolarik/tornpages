/// @desc Creates a message object

/// @function scr_create_message_specs_cutscene(message_type,message_wait_time,message_name)
/// @arg message_type - HEADSUP, DIALOGUE, or CHOICE. The type of message.
/// @arg message_wait_time - the amount of time a message should wait before destroying itself. If it's not a passive message (the player needs to click it away) the number should be less than 0
/// @arg message_name - the name of the message

var message_type = argument0
var message_wait_time = argument1
var message_name = argument2
	

//BASED ON Y POSITION OF CREATOR, ASSIGN MESSAGE TO TOP OR BOTTOM
if instance_exists(obj_view) {
	var ypos = camera_get_view_y(view)
	var middle = ypos+obj_view.view_height/2
	if y<middle {	
		var message_location = DOWN	
	}
	else {
		var message_location = UP	
	}
}
else {
	var message_location = UP	
}


//if it's battle, change it so it's always at the top
if room=rm_btl or room=rm_gameover {
	message_location = UP	
}

	
	

//CREATE MESSAGE

if message_type!=CHOICE and message_wait_time<=0 {
		var message = instance_create_depth(x,y,depth-1,obj_message)
	}

//see if it's passive or not
if message_wait_time > 0 {
		var message = instance_create_depth(x,y,depth-1,obj_passive_message)
		message.wait_time=message_wait_time
	}
	
if message_type=CHOICE {
		var message = instance_create_depth(x,y,depth-1,obj_choice_message)
		message_type=DIALOGUE // for the sake of the drawing
	}

//set its parent
message.parent=id
			
//SET NAME
message.name=string(message_name)
			

//IF NOT IN BATTLE
if room!=rm_btl and room!=rm_gameover {
		
	if message_type=HEADSUP {
		
		if message_location=DOWN {
			message.display_x=message.message_bot_x
			message.display_y=message.message_bot_y
			message.display_h=message.message_bot_h
			message.display_w=message.message_bot_w
		}
		if message_location=UP {
			message.display_x=message.message_top_x
			message.display_y=message.message_top_y
			message.display_h=message.message_top_h
			message.display_w=message.message_top_w
		}
		
	}
		
	if message_type=DIALOGUE {
		
		if message_location=DOWN {
			message.display_x=message.dialogue_bot_x
			message.display_y=message.dialogue_bot_y
			message.display_h=message.dialogue_bot_h
			message.display_w=message.dialogue_bot_w
		}
		if message_location=UP {
			message.display_x=message.dialogue_top_x
			message.display_y=message.dialogue_top_y
			message.display_h=message.dialogue_top_h
			message.display_w=message.dialogue_top_w
		}
		
	}
			
}

//IF IN BATTLE
if room=rm_btl or room=rm_gameover {
		
	if message_type=HEADSUP {
		
		if message_location=DOWN {
			message.display_x=message.battle_bot_x
			message.display_y=message.battle_bot_y
			message.display_h=message.battle_bot_h
			message.display_w=message.message_bot_w
		}
		if message_location=UP {
			message.display_x=message.battle_top_x
			message.display_y=message.battle_top_y
			message.display_h=message.battle_top_h
			message.display_w=message.battle_top_w
		}
		
	}
		
	if message_type=DIALOGUE {
		
		if message_location=DOWN {
			message.display_x=message.dialogue_bot_x
			message.display_y=message.dialogue_bot_y
			message.display_h=message.dialogue_bot_h
			message.display_w=message.dialogue_bot_w
		}
		if message_location=UP {
			message.display_x=message.dialogue_top_x
			message.display_y=message.dialogue_top_y
			message.display_h=message.dialogue_top_h
			message.display_w=message.dialogue_top_w
		}
		
	}
			
}

return message