//manage text
script_execute(scr_get_visible_text,spd*12)

//handle input

//get the text length
text_length = string_length(text[text_page])
	
if obj_input.action_pressed or obj_input.back_pressed
{
	
	//if at the end
	if text_count>text_length
		{
			//ready for next
			next_ready=false
			
			//next page
			if text_page<array_length_1d(text)-1
				{
					text_page++
					text_count = 0
					text_visible = ""
				}
			else
			{
				//event 1 --- text complete!
				event_user(1)
				//sfx
				scr_play_sfx(sfx_text)	
				exit
			}
			
			//cursor
			if instance_exists(cursor) {with cursor {instance_destroy()}}
			cursor=noone
			
			//sfx
			scr_play_sfx(sfx_text)	

		}

	//if not at the end
	else
		{
			if cutscene=noone
				{
				text_count=text_length
				}
		}
}

if text_count>text_length and !obj_input.action_pressed and !obj_input.back_pressed
{
	next_ready=true
}



