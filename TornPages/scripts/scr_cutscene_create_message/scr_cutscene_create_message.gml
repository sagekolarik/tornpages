/// @desc Creates a message object for use in cutscenes

/// @function scr_cutscene_create_message(message_type,message_wait_time,message_name)

///@arg speaker_inst
///@arg message_type - HEADSUP, DIALOGUE, or CHOICE. The type of message.
///@arg message_wait_time - the amount of time a message should wait before destroying itself. If it's not a passive message (the player needs to click it away) the number should be less than 0

var speaker = argument0

with speaker {
	
	var message_type = argument1
	var message_wait_time = argument2


	if !instance_exists(obj_message) {
		
	
		message_name="cutscene_message"
		other.message = scr_create_message_specs(message_type,message_wait_time,message_name)
		other.message.font=font
		other.message.name_banner=name_banner
	
	}
}