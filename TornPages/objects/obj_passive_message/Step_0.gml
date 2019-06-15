//manage text
script_execute(scr_get_visible_text,spd*12)

//get the text length
var text_length = string_length(text[text_page])

if text_count>text_length
{
	if alarm[1]=-1
		{
			alarm[1]=wait_time
		}
}



