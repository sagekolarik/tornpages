

// Inherit the parent event
event_inherited();

//if at the end of the last page
if text_page=array_length_1d(text)-1 and text_length=text_count and choice_displayed=false
	{
		choice_displayed=true
		exit
	}

//choice
if choice_displayed=true
{
	choice_index+= obj_input.up_pressed - obj_input.down_pressed
	if choice_index>array_length_1d(choice)-1
		{
			choice_index=0
			scr_play_sfx(sfx_click)
		}
	if choice_index<0
		{
			choice_index=array_length_1d(choice)-1
			scr_play_sfx(sfx_click)
		}
		
	//choose
	if obj_input.action_pressed
		{
			//////CHOICE
			chosen[choice_index]=true
			scr_play_sfx(sfx_select)
		}
	if obj_input.back_pressed
		{
			//////CHOICE
			chosen[array_length_1d(chosen)-1]=true
			scr_play_sfx(sfx_deselect)
		}
}





