var pause_time = argument0

var new_string = string_copy(text[text_page], 1, text_count)

if string_length(new_string) > string_length(text_visible)
	{
		//check for last key
		var last_char = string_char_at(new_string, text_count)
		
		//check for a pause
		if string_char_at(text[text_page],text_count) = "."
		or string_char_at(text[text_page],text_count) = ","
		or string_char_at(text[text_page],text_count) = "!"
		or string_char_at(text[text_page],text_count) = "?"
			{
				alarm[0]=pause_time
			}
			
		//update visible text
		text_visible = new_string
		//sfx
		var sound_option = script_execute(scr_get_text_sound,sound,3)
		scr_play_sfx(sound_option)
	}
